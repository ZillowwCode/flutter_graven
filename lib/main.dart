import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset(
                "assets/images/logo.svg",
                colorFilter: const ColorFilter.mode(Colors.deepPurple, BlendMode.srcIn),
              ),
              const Text("Title"),
              const Text("Subtitle"),
            ],
          ),
        ),
      )
    );
  }
}