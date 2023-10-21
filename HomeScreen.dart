import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Av Hall'),
        backgroundColor: const Color.fromARGB(255, 41, 8, 134),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              buildClickableCard(context, 'ME AV HALL'),
              buildClickableCard(context, 'CSE AV HALL'),
              buildClickableCard(context, 'AIDS AV HALL'),
            ],
          ),
        ),
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
              color: const Color.fromARGB(255, 41, 8, 134),
              onPressed: () {},
            ),
            const SizedBox(
              width: 40,
            ),
            IconButton(
              icon: const Icon(Icons.notifications, size: 35),
              onPressed: () {
                Navigator.pushNamed(context, '/notification');
              },
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

  Widget buildClickableCard(BuildContext context, String title) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/bookhall');
        // Handle the click event here
        // You can navigate to another screen or perform any other action
        print('Clicked on $title');
      },
      child: SizedBox(
        width: 340,
        height: 120,
        child: Card(
          elevation: 6,
          child: Center(
            child: Text(
              title,
              style: const TextStyle(fontSize: 17),

            ),
          ),
        ),
      ),
    );
  }
}
