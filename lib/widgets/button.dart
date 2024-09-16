import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Button"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.amber,
                elevation: 20,
                overlayColor: Colors.blue.withOpacity(0.1),
              ),
              child: const Text(
                'Press me',
                style: TextStyle(fontSize: 20.0, color: Colors.black),
              ),
              onPressed: () {
                // Add your action here
              },
            ),
            const SizedBox(height: 50,),

            SizedBox(
              height: 40, 
              width: 400, 
              child: ElevatedButton(
                onPressed: () {}, 
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).primaryColor,
                ),
                child: const Text(
                  "Click me", 
                  style: TextStyle(
                    fontSize: 16.0, 
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
