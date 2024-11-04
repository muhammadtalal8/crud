// ignore_for_file: non_constant_identifier_names, use_key_in_widget_constructors, avoid_print

import 'package:crud/pages/home_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCOTQPzpsk-LpP3fCCeuZaBHR4osLWI4DQ",
            authDomain: "flutter-crud-5c1bd.firebaseapp.com",
            projectId: "flutter-crud-5c1bd",
            storageBucket: "flutter-crud-5c1bd.firebasestorage.app",
            messagingSenderId: "54945484609",
            appId: "1:54945484609:web:98f2276d46556b3f9cdbc0",
            measurementId: "G-HF54JETB7Y"));
  } else {
    await Firebase.initializeApp();
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, Snapshot) {
          //Check the Error
          if (Snapshot.hasError) {
            print("Something Went wrong");
          }
          if (Snapshot.connectionState == ConnectionState.done) {
            return MaterialApp(
              title: 'Flutter Firestore CRUD',
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
              ),
              debugShowCheckedModeBanner: false,
              home: const HomePage(),
            );
          }
          return const CircularProgressIndicator();
        });
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        shape: const CircleBorder(),
        child: const Icon(Icons.add),
      ),
    );
  }
}
