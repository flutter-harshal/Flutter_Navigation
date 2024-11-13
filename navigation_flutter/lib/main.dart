import 'package:flutter/material.dart';
import 'package:navigation_flutter/second_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const FirstScreen(),
      //2nd way of navigation
      routes: {
        "/secondScreen": (context) => const SecondScreen(),
      },
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("First Screen"),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            //NAVIGATE TO SECOND SCREEN
            // 1st Way
            // Navigator.of(context).push(
            //   MaterialPageRoute(
            //     builder: (context) {
            //       return const SecondScreen();
            //     },
            //   ),
            // );

            //2nd Way
            Navigator.of(context).pushNamed(
              "/secondScreen",
            );
          },
          child: const Text("Go to Second Screen"),
        ),
      ),
    );
  }
}
