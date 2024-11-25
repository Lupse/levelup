import 'package:final_project/model/reminder/reminder.dart';
import 'package:final_project/model/user/user.dart';
import 'package:final_project/screen/auth/login_screen.dart';
import 'package:final_project/screen/navigator/navigator.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Hive (uses default directory)
  await Hive.initFlutter();

  // Register Adapter
  Hive.registerAdapter(UserAdapter());
  Hive.registerAdapter(ReminderAdapter());

  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  bool? session = false;
  @override
  void initState() {
    super.initState();
    loadSession();
  }

  Future<void> loadSession() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      session = prefs.getBool('isLoggedIn');
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child:
              session == true ? const NavigatorScreen() : const LoginScreen(),
        ),
      ),
    );
  }
}
