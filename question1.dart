// Question 1: Basic Data Types & Functions (Difficulty: 1/5) ⭐
/**
 * EXPECTED OUTPUT:
 * Name: John Doe, Age: 25, Height: 5.9, Is Student: true
 * BMI: 22.5
 * Grade: B
 */

String name = "John Doe";
int age = 25;
double height = 5.9;
bool isStudent = true;


double calculateBMI(double weight, double height) {
  double bmi = weight / (height * height);
  return bmi;
}


String getGrade(int score) {
  if (score >= 90) {
    return "A";
  } else if (score >= 80) {
    return "B";
  } else if (score >= 70) {
    return "C";
  } else if (score >= 60) {
    return "D";
  } else {
    return "F";
  }
}

void main() {
  double weight = 69.7;
  double heightInMeters = 1.76;

  double bmi = calculateBMI(weight, heightInMeters);
  bmi = double.parse(bmi.toStringAsFixed(1));

  String grade = getGrade(85);

  print("Name: $name, Age: $age, Height: $height, Is Student: $isStudent");
  print("BMI: $bmi");
  print("Grade: $grade");
}

