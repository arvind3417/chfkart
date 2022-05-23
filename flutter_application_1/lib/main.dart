import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/body/1.dart';
import 'package:flutter_application_1/api/api.dart';
import 'package:flutter_application_1/body/body.dart';
import 'package:flutter_application_1/sours/index.dart';
import 'package:flutter_application_1/body/lvb.dart';

import 'package:flutter_application_1/sours/sliver.dart';
// import 'package:flutter_application_1/sliver.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: IndexPage(),
    );
  }
}

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("ChefKart"),
      ),
      // body: body(`)
    );

//         children: [
//           Stack(
//             child: Container(
//               height: MediaQuery.of(context).size.height*.1,
//               width: MediaQuery.of(context).size.width,
//               decoration: BoxDecoration(

//                 color: Colors.black38,
//                 borderRadius:const BorderRadius.only(bottomLeft: Radius.circular(18),bottomRight: Radius.circular(18)),

//               ),
//             ),
//           )
//         ],
//       ),

//     );
  }
}
