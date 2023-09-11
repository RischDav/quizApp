import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {Key? key}) : super(key: key);

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              Color textColor = data['result'] == true
                  ? const Color.fromARGB(239, 24, 199, 0)
                  : const Color.fromARGB(237, 87, 0, 4);
              return Container(
                padding: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        width: 30, // Breite des Kreises anpassen
                        height: 30, // Höhe des Kreises anpassen
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: textColor, // Hintergrundfarbe des Kreises
                        ),
                        child: Center(
                          child: Text(
                            ((data['question_index'] as int) + 1).toString(),
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment
                                .centerLeft, // Adjust alignment as needed
                            child: Text(
                              data['question'] as String,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          const SizedBox(height: 5),
                          Align(
                            alignment: Alignment
                                .centerLeft, // Adjust alignment as needed
                            child: Text(
                              data['user_answer'] as String,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: textColor),
                            ),
                          ),
                          Align(
                            alignment: Alignment
                                .centerLeft, // Adjust alignment as needed
                            child: Text(
                              data['correct_answer'] as String,
                              textAlign: TextAlign.start,
                              style: TextStyle(color: textColor),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
