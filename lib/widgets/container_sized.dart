import 'package:flutter/material.dart';

class ContainerSized extends StatelessWidget {
  const ContainerSized({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text("Container and Sized Box")),
      body: Center(
        child: Container(
          decoration: const BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
              ),
              boxShadow: [
                BoxShadow(
                    blurRadius: 20,
                    spreadRadius: 02,
                    color: Colors.deepPurpleAccent)
              ]),
          height: 100,
          width: 100,
          child: const Center(
              child: Text(
            "Hello",
            style: TextStyle(fontSize: 25),
          )),
        ),
      ),
    );
  }
}
