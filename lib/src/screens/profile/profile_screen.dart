import 'package:flutter/material.dart';

void main() {
  runApp(ProfileScreen());
}

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  // Dummy data for multiple students
  List<Student> students = [
    Student(
      name: 'John Doe',
      className: 'Class 10',
      phone: '1234567890',
      email: 'john.doe@example.com',
      parentsName: 'Jane Doe',
      address: '123 Main Street, Cityville',
      admissionNumber: 'A12345',
    ),
    // Add more students as needed
  ];

  int selectedStudentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Student Profile'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Student Photo
              Expanded(
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors
                            .blue, // Placeholder color for photo background
                      ),
                      width: 150,
                      height: 150,
                      // Add your student photo here
                      child: Icon(
                        Icons.person,
                        size: 80,
                        color: Colors.white,
                      ),
                    ),
                    Positioned(
                      right: 0,
                      top: 0,
                      bottom: 0,
                      child: GestureDetector(
                        onTap: () {
                          // Logic to switch to the next student
                          setState(() {
                            selectedStudentIndex =
                                (selectedStudentIndex + 1) % students.length;
                          });
                        },
                        child: Container(
                          width: 40,
                          color: Colors.transparent,
                          alignment: Alignment.center,
                          child: Icon(Icons.arrow_downward),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              // Student Details
              Expanded(
                child: ListView(
                  children: [
                    buildDetailItem(
                        'Name', students[selectedStudentIndex].name),
                    buildDetailItem(
                        'Class', students[selectedStudentIndex].className),
                    buildDetailItem(
                        'Phone', students[selectedStudentIndex].phone),
                    buildDetailItem(
                        'Email', students[selectedStudentIndex].email),
                    buildDetailItem('Parents Name',
                        students[selectedStudentIndex].parentsName),
                    buildDetailItem(
                        'Address', students[selectedStudentIndex].address),
                    buildDetailItem('Admission No.',
                        students[selectedStudentIndex].admissionNumber),
                    // Add more details as needed
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildDetailItem(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(value),
        ],
      ),
    );
  }
}

class Student {
  final String name;
  final String className;
  final String phone;
  final String email;
  final String parentsName;
  final String address;
  final String admissionNumber;

  Student({
    required this.name,
    required this.className,
    required this.phone,
    required this.email,
    required this.parentsName,
    required this.address,
    required this.admissionNumber,
  });
}
