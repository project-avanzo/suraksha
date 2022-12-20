import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:suraksha/home%20page.dart';

class splash extends StatefulWidget {
  const splash({super.key});

  @override
  State<splash> createState() => Initstate();
}

class Initstate extends State<splash> {
  @override
  Widget build(BuildContext context) {
    gotohome();
    return initWidget();
  }

  Widget initWidget() {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromARGB(246, 128, 39, 24),
                gradient: LinearGradient(colors: [
                  Color.fromARGB(248, 130, 10, 146),
                  Color.fromARGB(246, 168, 174, 180),
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          ),
          Center(
            child: Container(
              height: 200,
              width: 200,
              child: Image.asset("image/azlogobgr.png"),
            ),
          )
        ],
      ),
    );
  }

  Future<void> gotohome() async {
    Future.delayed(const Duration(seconds: 3));
    await Navigator.of(context)
        .push(MaterialPageRoute(builder: (ctx) => const homepage()));
  }
}
