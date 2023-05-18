import 'package:flutter/material.dart';
import 'package:quiz_app/constants.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(
                children: [
                  Text(
                    ((data['question_index'] as int) + 1).toString(),
                    style: const TextStyle(color: skWhite),
                  ),
                  Expanded(
                    child: Column(
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
                        Text(
                          data['user_answer'] as String,
                          style: TextStyle(
                            color:
                                (data['user_answer'] == data['correct_answer'])
                                    ? correctAnswerColor
                                    : wrongAnswerColor,
                            fontFamily: 'ProximaNova',
                            fontWeight: FontWeight.w400,
                            fontSize: 10,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(data['correct_answer'] as String,
                            style: const TextStyle(
                              color: correctAnswerColor,
                              fontFamily: 'ProximaNova',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                            )),
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
