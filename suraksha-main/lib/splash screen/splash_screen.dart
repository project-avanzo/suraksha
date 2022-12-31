import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:suraksha/landing%20page/landing_page.dart';
import 'package:suraksha/main%20login%20page/login_page.dart';

import '../main login page/home page.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen>
    with TickerProviderStateMixin {
      String _string= "SURAKSHA";
  
  @override
  void initState() {
    super.initState();
    gotohome();
  }

  @override
  Widget build(BuildContext context) {
    timeDilation = 10.0;
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
            // height: sizedanimation.value,
            // width: sizedanimation.value,
            height: 150,
            width: 150,
            child: Hero(
                tag: "logo image", child: Image.asset("image/azlogobgr.png")),
          ),
        ),
        // Center(
        //   child: TweenAnimationBuilder(builder: (BuildContext context, Int value, Widget child) {
        //     return Text(_string.substring(0,value));
        //     }, duration: const Duration(seconds: 3), tween: IntTween(begin: 0,end:_string.length),

        //   ),
        // )
      ]),
    );
  }

  Future<void> gotohome() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => WillPopScope(
            onWillPop: () => Future.value(false),
            child: Scaffold(
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
                      child: SizedBox(
                        width: 500,
                        height: 500,
                        child: Center(
                          child: Image.asset(
                            "image/azlogobgr.png",
                            width: 80,
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 300, 0, 0),
                    child: Center(
                      child: Column(
                          children:  [
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.person,
                                        color:
                                            Color.fromARGB(248, 130, 10, 146),
                                      ),
                                      border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12))),
                                      labelText: 'Username',
                                      hintText: 'Enter Your Username')),
                            ),
                            const Padding(
                              padding: EdgeInsets.all(20.0),
                              child: TextField(
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.password,
                                        color:
                                            Color.fromARGB(248, 130, 10, 146),
                                      ),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(12)),
                                        borderSide: BorderSide(
                                            width: 3,
                                            color: Color.fromARGB(
                                                255, 163, 105, 240)),
                                      ),
                                      labelText: 'Password',
                                      hintText: 'Enter Your Password')),
                            ),
                            ElevatedButton(onPressed: () {
                              Navigator.pushReplacement(context, MaterialPageRoute(
                                builder: ((context) =>WillPopScope(
            onWillPop: () => Future.value(false),
            child:const landingPage()))));
                            } ,style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.purple
                            ), child: const Text("Submit",
                            selectionColor: Color.fromARGB(248, 252, 252, 252),))
                          ],
                        ),
                      ),
                    ),
                ],
              ),
            ))));
  }
}
