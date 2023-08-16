import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/quiz-logo.png",
            height: 300,
          ),
          const SizedBox(height: 80),
          Text(
            "Learn Flutter the fun way!",
            style: GoogleFonts.lato(
                color: const Color.fromARGB(255, 222, 197, 255), fontSize: 25),
          ),
          const SizedBox(height: 50),
          // ignore: avoid_print
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: ButtonStyle(
              minimumSize: MaterialStateProperty.all(const Size(200, 60)),
            ),
            label: const Text(
              "Press to start",
              style: TextStyle(fontSize: 20),
            ),
            icon: const Icon(Icons.arrow_right_alt),
          ),
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.all(20),
            margin: const EdgeInsets.symmetric(horizontal: 20),
            color: const Color.fromARGB(255, 43, 7, 83),
            child: Text(
              "This Quiz was part of the Flutter Udemy-course by Maximilian Schwarzmüller",
              textAlign: TextAlign.center,
              style: GoogleFonts.lato(
                  color: const Color.fromARGB(255, 222, 197, 255),
                  fontSize: 15),
            ),
          ),
        ],
      ),
    );
  }
}
