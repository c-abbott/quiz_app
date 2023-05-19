class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> get shuffledAnswers {
    final shuffledList = List.of(answers); // Copy answer list
    shuffledList.shuffle(); // Shuffle the copy
    return shuffledList; // Return the copy
  }
}
