import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Notifications'),
      backgroundColor: const Color.fromARGB(255, 41, 8, 134)),
      body: const Center(
        child: Text('Coming soon....'),
      ),
      bottomNavigationBar: SizedBox(
        height: 90,
        child: Row(
          children: [
            const SizedBox(
              width: 20,
            ),
            IconButton(
              icon: const Icon(Icons.home, size: 35),
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              icon: const Icon(Icons.notifications, size: 35),
              color:const  Color.fromARGB(255, 41, 8, 134),
              onPressed: () {},
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              icon: const Icon(Icons.schedule_rounded, size: 35),
              onPressed: () {
                Navigator.pushNamed(context, '/report');
              },
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              icon: const Icon(Icons.account_circle, size: 35),
              onPressed: () {
                Navigator.pushNamed(context, '/profile');
              },
            ),
          ],
        ),
      ),
    );
  }
}
