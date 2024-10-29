// ignore_for_file: unused_field, avoid_print, avoid_unnecessary_containers, sort_child_properties_last

import 'package:flutter/material.dart';

class UpdateStudentPage extends StatefulWidget {
  const UpdateStudentPage({super.key});

  @override
  State<UpdateStudentPage> createState() => _UpdateStudentPageState();
}

class _UpdateStudentPageState extends State<UpdateStudentPage> {
  final _formkey = GlobalKey<FormState>();
  updateUser() {
    print("User Update");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Update Student"),
      ),
      body: Form(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 30),
        child: ListView(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 10.0),
              child: TextFormField(
                initialValue: "Khan",
                autofocus: false,
                onChanged: (value) => {},
                decoration: const InputDecoration(
                  labelText: "Name:",
                  labelStyle: TextStyle(fontSize: 20.0),
                  border: OutlineInputBorder(),
                  errorStyle: TextStyle(color: Colors.redAccent, fontSize: 15),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please Enter Name';
                  }
                  return null;
                },
              ),
            ),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                    initialValue: "Khan@gmail.com",
                    autofocus: false,
                    onChanged: (value) => {},
                    decoration: const InputDecoration(
                      labelText: "Email:",
                      labelStyle: TextStyle(fontSize: 20.0),
                      border: OutlineInputBorder(),
                      errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Email';
                      } else if (!value.contains("@")) {
                        return 'Please Enter Valid Email';
                      }
                      return null;
                    })),
            Container(
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: TextFormField(
                    initialValue: "2563",
                    autofocus: false,
                    onChanged: (value) => {},
                    obscureText: true,
                    decoration: const InputDecoration(
                      labelText: "Password:",
                      labelStyle: TextStyle(fontSize: 20.0),
                      border: OutlineInputBorder(),
                      errorStyle:
                          TextStyle(color: Colors.redAccent, fontSize: 15),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please Enter Password';
                      }
                      return null;
                    })),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          updateUser();
                          Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        "Update",
                        style: TextStyle(fontSize: 18.0),
                      )),
                  ElevatedButton(
                    onPressed: () => {},
                    child: const Text(
                      'Reset',
                      style: TextStyle(fontSize: 18.0),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey),
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
