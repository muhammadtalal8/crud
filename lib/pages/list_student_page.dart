// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud/pages/update_student_page.dart';
// ignore: unused_import
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({super.key});

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  final Stream<QuerySnapshot> studentsStream =
      FirebaseFirestore.instance.collection('students').snapshots();
  delete(id) {
    print("User Deleted $id");
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: studentsStream,
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (snapshot.hasError) {
            print('Something Went Wrong');
          }
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          final List storedocs = [];
          snapshot.data!.docs.map((DocumentSnapshot document) {
            Map a = document.data() as Map<String, dynamic>;
            storedocs.add(a);
          }).toList();
          return Container(
            margin:
                const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Table(
                border: TableBorder.all(),
                columnWidths: const <int, TableColumnWidth>{
                  1: FixedColumnWidth(100)
                },
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    TableCell(
                        child: Container(
                      color: Colors.greenAccent,
                      child: const Text(
                        "Name",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                    TableCell(
                        child: Container(
                      color: Colors.greenAccent,
                      child: const Text(
                        "Email",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                    TableCell(
                        child: Container(
                      color: Colors.greenAccent,
                      child: const Text(
                        "Action",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )),
                  ]),
                  for (var i = 0; i < storedocs.length; i++) ...[
                    TableRow(children: [
                      TableCell(
                          child: Center(
                        child: Text(
                          storedocs[i]['name'],
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )),
                      TableCell(
                          child: Center(
                        child: Text(
                          storedocs[i]['email'],
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )),
                      const TableCell(
                          child: Center(
                        child: Text(
                          "Talal",
                          style: TextStyle(fontSize: 18.0),
                        ),
                      )),
                      TableCell(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: () => {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const UpdateStudentPage()))
                                  },
                              icon: const Icon(
                                Icons.edit,
                                color: Colors.orange,
                              )),
                          IconButton(
                              onPressed: () => {print(storedocs)},
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                              ))
                        ],
                      ))
                    ]),
                  ]
                ],
              ),
            ),
          );
        });
  }
}
