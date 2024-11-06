class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}

//If we apply shuffle directly then we won't be able or would lose the original list. we want to display it shuffling not directly the order we pasted so we used a variable stored into it and return, due to this our original list isn't disturbed
