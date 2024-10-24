// ignore_for_file: avoid_print

import 'package:crud/pages/update_student_page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({super.key});

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  delete(id) {
    print("User Deleted $id");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Table(
          border: TableBorder.all(),
          columnWidths: const <int, TableColumnWidth>{1: FixedColumnWidth(140)},
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
            TableRow(children: [
              const TableCell(
                  child: Center(
                child: Text(
                  "Talal",
                  style: TextStyle(fontSize: 18.0),
                ),
              )),
              const TableCell(
                  child: Center(
                child: Text(
                  "Talal@gmail>com",
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
                      onPressed: () => {delete(1)},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ))
                ],
              ))
            ]),
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
            TableRow(children: [
              const TableCell(
                  child: Center(
                child: Text(
                  "Talal",
                  style: TextStyle(fontSize: 18.0),
                ),
              )),
              const TableCell(
                  child: Center(
                child: Text(
                  "Talal@gmail>com",
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
                      onPressed: () => {delete(1)},
                      icon: const Icon(
                        Icons.delete,
                        color: Colors.red,
                      ))
                ],
              ))
            ]),
          ],
        ),
      ),
    );
  }
}
