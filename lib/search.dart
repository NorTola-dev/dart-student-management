

import 'student.dart';

class Search {
  void searchByName(String name) {
    List<Student> searchResults = students
        .where(
          (student) => student.name.toLowerCase().contains(name.toLowerCase()),
        )
        .toList();

    if (searchResults.isEmpty) {
      print("No students found with the name '$name'.");
      return;
    }

    print("Students found with the name '$name':");

    for (var student in searchResults) {
      print(
        "ID: ${student.id}, "
        "Name: ${student.name}, "
        "Gender: ${student.Gender},"
        "Age: ${student.age}",
      );
    }
  }

  // Search student by ID
  void searchById(int id) {
    Student? student = students.firstWhere((student) => student.id == id);

    print("Student found with ID $id:");
    print(
      "ID: ${student.id}, "
      "Name: ${student.name}, "
      "Gender: ${student.Gender}, "
      "Age: ${student.age}",
    );
  }
}
