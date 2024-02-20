import 'package:flutter/material.dart';

import 'pages/events_page.dart';
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

  int _selectedPageIndex = 0;

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
        body: [
          const HomePage(),
          const EventsPage(),
        ][_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: (int index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
              label: "Agenda",
            ),
          ],
        ),
      )
    );
  }
}
