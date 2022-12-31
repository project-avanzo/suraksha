import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class landingPage extends StatefulWidget {
  const landingPage({super.key});

  @override
  State<landingPage> createState() => _landingPageState();
}

class _landingPageState extends State<landingPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(appBar: AppBar(title: Text('Home'),backgroundColor: Color.fromARGB(248, 130, 10, 146),),
      body: Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(246, 128, 39, 24),
              gradient: LinearGradient(colors: [
               Color.fromARGB(248, 130, 10, 146),
                Color.fromARGB(246, 168, 174, 180),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
    )],
    );
  }
}
