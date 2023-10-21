import 'package:avhalllogin/loginscreen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _navigatetologinscreen();
  }

  _navigatetologinscreen() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/image4.jpg',
              width: 200,
            ),
           const SizedBox(
              height: 30,
            ),
          const  Text('Welcome To Av Hall Booking ',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold))
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
