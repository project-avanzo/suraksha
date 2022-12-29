import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:suraksha/main%20login%20page/login_page.dart';

import '../main login page/home page.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation sizedanimation;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2));
    sizedanimation =
        Tween<double>(begin: 50.0, end: 200.0).animate(_controller);
    _controller.forward();
    _controller.addListener(() {
      setState(() {});
    });
    _controller.repeat;
    gotohome();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 5.0;
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

        // AnimatedContainer(
        //     height: 200, width: 200, duration: Duration(seconds: 3))
        Center(
          child: SizedBox(
            height: sizedanimation.value,
            width: sizedanimation.value,
            child: Hero(
                tag: "logo image", child: Image.asset("image/azlogobgr.png")),
          ),
        )
      ]),
    );
  }

  Future<void> gotohome() async {
    await Future.delayed(Duration(seconds: 4));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => Scaffold(
              body: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(246, 128, 39, 24),
                        gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(248, 130, 10, 146),
                              Color.fromARGB(246, 168, 174, 180),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                  ),
                  Hero(
                      tag: "logo image",
                      child: Image.asset(
                        "image/azlogobgr.png",
                        width: 70,
                      ))
                ],
              ),
            )));
  }
}
