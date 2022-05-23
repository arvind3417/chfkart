// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/body.dart';
// import 'package:flutter_application_1/foodlist.dart';

// class sticky extends StatelessWidget {
//   const sticky({Key? key}) : super(key: key);
//   // final Size size;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       // appBar: AppBar(
//       //   title: Text("slivers management"),
//       // ),
//       body: Column(
//         children: [
//           Container(
            
//               height: 100,
//               // color: Colors.red,
//               child: searchbar(size: MediaQuery.of(context).size)),
//               onescrollable(),twoscrollable(),threescrollable(),
//           Expanded(
//             child: ListView.builder(
//               shrinkWrap: true,
//               itemCount: 30,
//               itemBuilder: (BuildContext context, int index) {
//                 return cards();
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
