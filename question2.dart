// Question 2: Collections & Control Flow (Difficulty: 2/5) ⭐⭐
/**
 * EXPECTED OUTPUT:
 * Student Scores: {Alice: <random>, Bob: <random>, ...}
 * Highest Score: <Name> with <Score>
 * Lowest Score: <Name> with <Score>
 * Average Score: <Value>
 * Alice: <Score> (Category)
 * ...
 */

import 'dart:math';

void main() {
  List<String> studentNames = ["Alice", "Bob", "Charlie", "Diana", "Eve"];



  Map<String, int> studentScores = {};

  Random random = Random();
  for (int i = 0; i < studentNames.length; i++) {
    int score = random.nextInt(41) + 60;
    studentScores[studentNames[i]] = score;
  }

  String highestStudent = "";
  int highestScore = 0;
  String lowestStudent = "";
  int lowestScore = 100;
  double averageScore = 0.0;
  int total = 0;

  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;

    if (score > highestScore) {
      highestScore = score;
      highestStudent = student;
    }

    if (score <= lowestScore) {
      lowestScore = score;
      lowestStudent = student;
    }

    total = total + score;
  }

  averageScore = total / studentNames.length;

  print("Student Scores: $studentScores");
  print("Highest Score: $highestStudent with $highestScore");
  print("Lowest Score: $lowestStudent with $lowestScore");
  print("Average Score: $averageScore");


  for (String student in studentNames) {
    int score = studentScores[student] ?? 0;
    String category = "";

    switch (score ~/ 10) {
      case 10:
      case 9:
        category = "Excellent";
        break;
      case 8:
        category = "Good";
        break;
      case 7:
        category = "Average";
        break;
      default:
        category = "Needs Improvement";
    }

    print("$student: $score ($category)");
  }
}

