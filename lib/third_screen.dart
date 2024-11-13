import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Third Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(

            //NAVIGATE TO Third SCREEN
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text("Go to previous Screen")),
      ),
    );
  }
}
