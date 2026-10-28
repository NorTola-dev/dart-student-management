import 'dart:io';

import 'student.dart';
import 'score.dart';
import 'search.dart';

void main() {
  bool isRunning = true;

  while (isRunning) {
    print('\n================================');
    print('   STUDENT MANAGEMENT SYSTEM');
    print('================================');
    print('1. Display All Students');
    print('2. Display All Scores');
    print('3. Calculate Score by Student ID');
    print('4. Search Student by Name');
    print('6. Exit');
    print('================================');
    stdout.write('Choose an option: ');

    final input = stdin.readLineSync()?.trim();
    final choice = int.tryParse(input ?? '');

    switch (choice) {
      case 1:
        getAllStudent();
        break;

      case 2:
        calculateScore();
        break;

      case 3:
        Search s = Search();
        final id = readStudentId();
        if (id != null) {
          s.searchById(id);
        }
        break;

      case 4:
        Search s = Search();
        stdout.write('Enter student name: ');
        final name = stdin.readLineSync() ?? '';
        s.searchByName(name);
        break;

      case 5:
        isRunning = false;
        print('Thank you for using the application!');
        break;

      default:
        print('Invalid option. Please choose 1-6.');
    }
  }
}

int? readStudentId() {
  stdout.write('Enter student ID: ');
  final input = stdin.readLineSync()?.trim();
  final id = int.tryParse(input ?? '');

  if (id == null || id <= 0) {
    print('Invalid student ID. Please enter a positive number.');
    return null;
  }

  return id;
}
