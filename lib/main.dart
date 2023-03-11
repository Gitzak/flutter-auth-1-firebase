import 'package:flutter/material.dart';
import 'package:flutter_auth_1/Auth.dart';
import 'package:flutter_auth_1/screens/home_screen.dart';
import 'package:flutter_auth_1/screens/login_screen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_auth_1/screens/signup_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // home: const Auth(),
      routes: {
        '/': (context) => const Auth(),
        'homeScreen': (context) => const HomeScreen(),
        'signupScreen': (context) => const SignupScreen(),
        'loginScreen': (context) => const LoginScreen(),
      },
    );
  }
}
