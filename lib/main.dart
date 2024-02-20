import 'package:flutter/material.dart';

import 'pages/home_page.dart';

void main() {
  runApp(const AsynconfApp());
}

class AsynconfApp extends StatefulWidget {
  const AsynconfApp({super.key});

  @override
  State<AsynconfApp> createState() => _AsynconfAppState();
}

class _AsynconfAppState extends State<AsynconfApp> {

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: [
            const Text(
            "Asynconf",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
          ),
          const Text(
            "Événements",
            style: TextStyle(
              fontFamily: "Poppins",
              color: Colors.white,
            ),
          ),
          ][_currentPageIndex],
          backgroundColor: Colors.deepPurple[300],
        ),
        body: [
          const HomePage(),
          const EventsPage(),
        ][_currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int tappedIndex) {
            setState(() {
              _currentPageIndex = tappedIndex;
            });
          },
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: "Événements"
            ),
          ]
        ),
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