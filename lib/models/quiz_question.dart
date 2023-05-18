class QuizQuestion {
  const QuizQuestion(this.question, this.answers);

  final String question;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); // Copy answer list
    shuffledList.shuffle(); // Shuffle the copy
    return shuffledList; // Return the copy
  }
}
