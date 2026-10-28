class Student {
  int id;
  String name;
  String Gender;
  int age;
  Student({
    required this.id,
    required this.name,
    required this.Gender,
    required this.age,
  });
  void displayInfo() {
    print("Student ID : $id");
    print("Student name : $name");
    print("Student gender : $Gender");
    print("Student age : $age");
  }
}

List<Student> students = [
  Student(id: 1, name: 'one', Gender: 'Female', age: 20),
  Student(id: 2, name: 'Two', Gender: 'male', age: 25),
  Student(id: 3, name: 'Three', Gender: 'Female', age: 30),
];

void getAllStudent() {
  for (var e in students) {
    e.displayInfo();
  }
}
