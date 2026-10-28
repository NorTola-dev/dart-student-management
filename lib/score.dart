
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

void calculateScore() {
  print('===== Select Student =====');

  for (int i = 0; i < students.length; i++) {
    print('${i + 1}. ${students[i].name}');
  }

  stdout.write('Choose student number: ');
  int? choice = int.tryParse(stdin.readLineSync() ?? '');

  if (choice == null || choice < 1 || choice > students.length) {
    print('Invalid student number!');
    return;
  }

  Student student = students[choice - 1];

  stdout.write('Enter Network score: ');
  double? network = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter Dart score: ');
  double? dart = double.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter Database score: ');
  double? database = double.tryParse(stdin.readLineSync() ?? '');

  Score score = Score(student, network!, dart!, database!);

  print('===== Score Result =====');
  score.display();
}