import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Opacity(
              opacity: 0.8,
              child: Image.asset(
                "assets/images/logo.png",
                width: 250,
              )),
          const SizedBox(
            height: 15,
          ),
          Text(
            "Learn Flutter the Fun Way!!!",
            style: GoogleFonts.lato(fontSize: 22, color: Colors.black),
          ),
          const SizedBox(
            height: 25,
          ),
          OutlinedButton.icon(
              onPressed: startQuiz,
              style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
              icon: const Icon(Icons.quiz),
              label: const Text(
                "Start Quiz",
                style: TextStyle(color: Colors.black, fontSize: 18),
              ))
        ],
      ),
    );
  }
}
