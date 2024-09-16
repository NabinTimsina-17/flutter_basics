import 'package:flutter/material.dart';

class SnackbarWidget extends StatelessWidget {
  const SnackbarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            final snackBar = SnackBar(
              action: SnackBarAction(
                label: 'Undo',
                onPressed: () {
                  // Show a new snackbar when "Undo" is pressed
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('You have terminated your process'),
                      duration: Duration(milliseconds: 2000),
                    ),
                  );
                },
                textColor: Colors.blue,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              behavior: SnackBarBehavior.floating,
              duration: const Duration(milliseconds: 3000),
              content: const Text("This is an error"),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
