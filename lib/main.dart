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

<<<<<<< HEAD
  int _selectedPageIndex = 0;
=======
  int _currentPageIndex = 0;
>>>>>>> bottom-navigation-bar

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
<<<<<<< HEAD
        ][_selectedPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPageIndex,
          onTap: (int index) {
            setState(() {
              _selectedPageIndex = index;
            });
          },
          items: const [
=======
        ][_currentPageIndex],
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int tappedIndex) {
            setState(() {
              _currentPageIndex = tappedIndex;
            });
          },
          items: const <BottomNavigationBarItem>[
>>>>>>> bottom-navigation-bar
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "Accueil",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.event),
<<<<<<< HEAD
              label: "Agenda",
            ),
          ],
=======
              label: "Événements",
            ),
          ]
>>>>>>> bottom-navigation-bar
        ),
      )
    );
  }
}
<<<<<<< HEAD
=======

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {

  final _events = [
    {
      'title': "Conférence sur le développement durable",
      'date': "20.04.2024",
      'location': "Salle de conférence de l'EPFL",
    },
    {
      'title': "Git Basics",
      'date': "22.04.2024",
      'location': "Salle de conférence de l'EPFL",
    },
    {
      'title': "Introduction à Flutter",
      'date': "23.04.2024",
      'location': "Salle de conférence de l'EPFL",
    },
    {
      'title': "Introduction à Dart",
      'date': "23.04.2024",
      'location': "Salle de conférence de l'EPFL",
    },
    {
      'title': "Introduction à Firebase",
      'date': "24.04.2024",
      'location': "Salle de conférence de l'HES-SO",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Text(
          "Événements à venir",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _events.length,
            itemBuilder: (context, index) {
              final title = _events[index]['title'];
              final date = _events[index]['date'];
              final location = _events[index]['location'];

              return Card(
                color: Colors.white,
                elevation: 2,
                child: ListTile(
                  title: Text("$title"),
                  subtitle: Text("$date - $location"),
                ),
              );
            }
          ),
        ),
      ],
    );
  }
}
>>>>>>> bottom-navigation-bar
