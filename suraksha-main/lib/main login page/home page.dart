import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(248, 130, 10, 146),
        title: const Center(child: Text("SURAKSHA")),
      ),
      body: Stack(children: [
        Container(
            decoration: const BoxDecoration(
          color: Color.fromARGB(246, 165, 122, 185),
        )),
        SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
                  width: 50,
                ),
                SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.asset("image/azlogobgr.png"),
                ),
                 Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person,
                            color: Color.fromARGB(248, 130, 10, 146),
                          ),
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8))),
                          labelText: 'Username',
                          hintText: 'Enter Your Username')),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.password,
                            color: Color.fromARGB(248, 130, 10, 146),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(8)),
                            borderSide:
                                BorderSide(width: 3, color: Color.fromARGB(255, 163, 105, 240)),
                          ),
                          labelText: 'Password',
                          hintText: 'Enter Your Password')),
                ),
                Row(
                  children: [],
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
