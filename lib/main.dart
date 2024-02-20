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
          const Text(
            "Test des notifications",
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
          const NotificationsPage(),
        ][_currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentPageIndex,
          onTap: (int index) {
            setState(() {
              _currentPageIndex = index;
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
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: "Notifications",
            ),
          ],
        ),
      )
    );
  }
}

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () => print("test"),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepPurple[300],
          elevation: 5,
        ),
        child: const Text(
          "Tester les notifications",
          style: TextStyle(
            fontFamily: "Poppins",
            fontSize: 14,
            color: Colors.white,
          ),
        ),
      )
    );
  }
}