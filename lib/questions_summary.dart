import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              bool isCorrect = (data['user_answer'] == data['correct_answer']);
              return Row(
                children: [
                  Container(
                    margin: const EdgeInsets.all(16),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: isCorrect ? correctAnswerColor : wrongAnswerColor,
                      shape: BoxShape.circle,
                    ),
                    child: Text(
                      ((data['question_index'] as int) + 1).toString(),
                      style: const TextStyle(
                          color: primaryColor,
                          fontSize: 20,
                          fontFamily: 'ProximaNova',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          data['question'] as String,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: skWhite,
                              fontSize: 14,
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Your answer: ',
                                style: TextStyle(
                                  color: isCorrect
                                      ? correctAnswerColor
                                      : wrongAnswerColor,
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: '${data['user_answer']}',
                                style: TextStyle(
                                  color: isCorrect
                                      ? correctAnswerColor
                                      : wrongAnswerColor,
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 4),
                        RichText(
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                text: 'Correct answer: ',
                                style: TextStyle(
                                  color: correctAnswerColor,
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 12,
                                ),
                              ),
                              TextSpan(
                                text: '${data['correct_answer']}',
                                style: const TextStyle(
                                  color: correctAnswerColor,
                                  fontFamily: 'ProximaNova',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
