import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../main login page/home page.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    gotohome();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: const BoxDecoration(
              color: Color.fromARGB(246, 128, 39, 24),
              gradient: LinearGradient(colors: [
                Color.fromARGB(248, 130, 10, 146),
                Color.fromARGB(246, 168, 174, 180),
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
        ),
        Center(
          child: SizedBox(
            height: 200,
            width: 200,
            child: Image.asset("image/azlogobgr.png"),
          ),
        )
      ]),
    );
  }

  Future<void> gotohome() async {
   await Future.delayed(Duration(seconds: 3));
     Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const homepage()));
  }
}
