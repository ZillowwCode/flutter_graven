import 'package:flutter/material.dart';

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
          title: const Text("Asynconf"),
          backgroundColor: Colors.deepPurple[300],
        ),
        body: const Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Placeholder(),
              Text("Title"),
              Text("Subtitle"),
            ],
          ),
        ),
      )
    );
  }
}