import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const AsynconfApp());
}

class AsynconfApp extends StatelessWidget {
  const AsynconfApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Asynconf",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
          ),
          backgroundColor: Colors.deepPurple[300],
        ),
        body: const EventsPage(),
      )
    );
  }
}

class EventsPage extends StatelessWidget {
  const EventsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}