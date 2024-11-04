// ignore_for_file: sort_child_properties_last

import 'package:crud/pages/add_student_page.dart';
import 'package:crud/pages/list_student_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Flutter FireStore Create Read Undo Delete"),
            ElevatedButton(
              onPressed: () => {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AddStudentPage()))
              },
              child: const Text(
                'Add',
                style: TextStyle(fontSize: 20.0),
              ),
              style:
                  ElevatedButton.styleFrom(backgroundColor: Colors.deepPurple),
            )
          ],
        ),
      ),
      body: const ListStudentPage(),
    );
  }
}
