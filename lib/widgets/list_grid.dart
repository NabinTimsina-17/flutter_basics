import 'package:flutter/material.dart';

class ListGrid extends StatefulWidget {
  const ListGrid({super.key});

  @override
  State<ListGrid> createState() => _ListGridState();
}

class _ListGridState extends State<ListGrid> {
  List<String> fruits = ['Orange', 'Apple', 'Mango', 'Banana'];
  Map fruitsPerson = {
    'fruits': ['Orange', 'Apple', 'Mango', 'Banana'],
    'names': ['Karan', 'Arjun', 'Jaya', 'Veeru']
  };
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List and Grid'),
        backgroundColor: Colors.red,
        elevation: 0,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Number of items per row
          crossAxisSpacing: 4.0,
          mainAxisSpacing: 4.0,
          childAspectRatio: 1.0, // Aspect ratio of each item
        ),
        itemCount: fruits.length, // Define the number of items
        itemBuilder: (context, index) {
          return Card(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(fruitsPerson['fruits'][index]),
                  Text(fruitsPerson['names'][index]),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
