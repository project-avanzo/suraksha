// import 'package:flutter/animation.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';

// class loginPage extends StatefulWidget {
//   const loginPage({super.key});

//   @override
//   State<loginPage> createState() => _loginPageState();
// }

// class _loginPageState extends State<loginPage> {
//   @override
//   void initState() {
//     logochange = true;
//     super.initState();
//   }

//   void didChangeDependencies() {
//     logochange = !logochange;
//     super.didChangeDependencies();
//   }

//   bool logochange = true;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
          // Container(
          //   decoration: const BoxDecoration(
          //       color: Color.fromARGB(246, 128, 39, 24),
          //       gradient: LinearGradient(colors: [
          //         Color.fromARGB(248, 130, 10, 146),
          //         Color.fromARGB(246, 168, 174, 180),
          //       ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
          // ),
//           AnimatedPositioned(
//             duration: Duration(seconds: 5),
//             width: logochange ? 50.0 : 150.0,
//             height: logochange ? 50.0 : 150.0,
//             child: Image.asset("image/azlogobgr.png"),
//             top: logochange ? 50.0 : 150.0,
//             curve: Curves.fastOutSlowIn,
//           )
//         ],
//       ),
//     );
//   }
// }
