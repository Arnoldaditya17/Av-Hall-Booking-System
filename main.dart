import 'package:avhalllogin/BookHall.dart';
import 'package:flutter/material.dart';
// import 'package:avhalllogin/loginscreen.dart';
import 'package:avhalllogin/HomeScreen.dart';
import 'package:avhalllogin/ProfileScreen.dart';
import 'package:avhalllogin/ReportScreen.dart';
import 'package:avhalllogin/NotificationScreen.dart';
import 'package:avhalllogin/ForgotPassword.dart';
import 'package:avhalllogin/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,

      initialRoute: '/',
      routes: {
        // '/': (context) => const LoginScreen(),
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const ProfileScreen(),
        '/report': (context) => const ReportScreen(),
        '/notification': (context) => const NotificationScreen(),
        '/forgotpassword': (context) => const ForgotPassword(),
        '/bookhall': (context) => const BookHall(),
      },
    );
  }
}
