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

class EventsPage extends StatefulWidget {
  const EventsPage({super.key});

  @override
  State<EventsPage> createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {

  final _events = [
    {
      "title": "Mobile Security Conference",
      "date": "20.04.2024",
      "time": "14h00",
      "location": "Salle 1",
      "description": "Conférence sur la sécurité des applications mobiles",
    },
    {
      "title": "Web Security Conference",
      "date": "22.04.2024",
      "time": "15h30",
      "location": "Salle 1",
      "description": "Conférence sur la sécurité des applications web",
    },
    {
      "title": "Lightspeed Conference",
      "date": "25.04.2024",
      "time": "09h00",
      "location": "Salle 2",
      "description": "Conférence sur la vitesse de développement",
    },
    {
      "title": "Lightweight Conference",
      "date": "27.04.2024",
      "time": "10h30",
      "location": "Salle 2",
      "description": "Conférence sur la légèreté des applications",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        children: [
          const Text(
            "Événements à venir",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _events.length,
              itemBuilder: (context, index) {
                final event = _events[index];
                final title = event["title"];
                final date = event["date"];
                final time = event["time"];
                final description = event["description"];

                return Card(
                  child: ListTile(
                    title: Text("$title "),
                    subtitle: Text("Le $date à $time"),
                    leading: const Icon(Icons.event),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text("$title"),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Le $date à $time"),
                              Text("Lieu: ${event["location"]}"),
                              Text("$description"),
                            ],
                          ),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("Fermer"),
                            ),
                          ],
                        );
                      },
                    ),
                  )
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}