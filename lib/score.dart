
import 'dart:io';

import 'student.dart';

class Score {
  Student stu;
  double network;
  double dart;
  double database;

  Score(this.stu, this.network, this.dart, this.database);

  double total() {
    return network + dart + database;
  }

  double avg() {
    return total() / 3;
  }

  String result(double average) {
    if (average >= 50) {
      return "Pass";
    } else {
      return "Fail";
    }
  }

  void display() {
    print("Student ID: ${stu.id}");
    print("Student Name: ${stu.name}");
    print("Network Score: $network");
    print("Dart Score: $dart");
    print("Database Score: $database");
    print("Total Score: ${total()}");
    print("Average Score: ${avg().toStringAsFixed(2)}");
    print("Result: ${result(avg())}");
  }
}

List<Score> scores = [
  Score(students[0], 80, 90, 70),
  Score(students[1], 60, 75, 85),
  Score(students[2], 75, 80, 90),
];

void calculateScore() {
  for (var score in scores) {
    // print("Enter scores for ${student.name}:");
    // stdout.write("Network Score: ");
    // double networkScore = double.parse(stdin.readLineSync()!);
    // stdout.write("Dart Score: ");
    // double dartScore = double.parse(stdin.readLineSync()!);
    // stdout.write("Database Score: ");
    // double databaseScore = double.parse(stdin.readLineSync()!);

    // Score score = Score(student, networkScore, dartScore, databaseScore);
    score.display();
    print("-------------------------");
  }
}