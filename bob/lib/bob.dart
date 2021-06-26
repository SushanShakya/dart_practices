class Bob {
  String response(String question) {
    if (question.isEmpty) return "Fine. Be that way!";
    if (question.contains(r'[A-Z]{2,}') && question.endsWith('?')) {
      return 'Whoa, chill out!';
    }
    if (question.contains(r'[A-Z]{2,}')) {
      return 'Whoa, chill out!';
    }
    if (question.endsWith("?")) {
      return "Sure.";
    }
    return 'Whatever.';
  }
}
