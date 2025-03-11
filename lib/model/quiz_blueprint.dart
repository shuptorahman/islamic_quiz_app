class QuizBlueprint {
  const QuizBlueprint(
    this.question,
    this.answers,
  );
  final String question;
  final List<String> answers;

  List<String> getShuffledAns() {
    final shuffledAnswer = List.of(answers);
    shuffledAnswer.shuffle();
    return shuffledAnswer;
  }
}
