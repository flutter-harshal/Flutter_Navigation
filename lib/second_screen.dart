import 'package:flutter/material.dart';
import 'package:navigation_flutter/third_screen.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //Navigate to second Screen

            // Navigator.of(context).pop();
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const ThirdScreen();

            //Repalce current Screen with ThirdScreen
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(
                builder: (context) {
                  return const ThirdScreen();
                },
              ),
            );

            //Push And remove until
            //
            //   Navigator.of(context).pushAndRemoveUntil(
            //     MaterialPageRoute(
            //       builder: (context) {
            //         return const ThirdScreen();
            //       },
            //     ),
            //     (route) {
            //       return false;
            //     },
            //   );
          },
          child: const Text("Go to third Screen"),
        ),
      ),
    );
  }
}
