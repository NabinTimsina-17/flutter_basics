import 'package:flutter/material.dart';
import 'package:flutter_basics/widgets/snackbar.dart';


void main() => runApp(const myApp());

// ignore: camel_case_types
class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light, 
        primaryColor: Colors.deepPurple),
        home: const SnackbarWidget(),
      );
  }
}