import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          SvgPicture.asset(
            "assets/images/logo.svg",
            colorFilter: const ColorFilter.mode(Colors.deepPurple, BlendMode.srcIn),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Asynconf 2024",
            style: TextStyle(
              fontFamily: "Poppins",
              fontSize: 32,
            ),
          ),
          const Text(
            "Salon virtuel de l'informatique."
          ),
        ],
      ),
    );
  }
}