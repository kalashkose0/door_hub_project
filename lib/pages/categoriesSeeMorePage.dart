import 'package:flutter/material.dart';

class categoriesSeeMorePage extends StatelessWidget {
  const categoriesSeeMorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Icon(Icons.arrow_back),
          ),
      body: Column(
        children: [
          Center(
            child: Container(
              height: 660,
              width: 330,
              color: Colors.red,
              child: const Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.more_vert),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "All Categories's  ",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Column(
                    children: [
//                       GridView.count(
//   crossAxisCount: 3,
//   childAspectRatio: 1.2,
//   mainAxisSpacing: 10,
//   crossAxisSpacing: 10,
//   children: [
//     Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 243, 190, 111),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/images/AC.png',

//             height: 60,
//           ),
//           Text(
//             'AC',
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 156, 199, 248),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/images/pipe.png',

//             height: 60,
//           ),
//           Text(
//             'Plumber',
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 235, 181, 249),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/images/cleaning.png',

//             height: 60,
//           ),
//           Text(
//             'Cleaning',
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 226, 235, 127),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/images/shift.png',

//             height: 60,
//           ),
//           Text(
//             'Shifting',
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Color.fromARGB(255, 244, 183, 198),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Image.asset(
//             'assets/images/electric.png',

//             height: 60,
//           ),
//           Text(
//             'Electrical',
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     ),
//     Container(
//       decoration: BoxDecoration(
//         color: Colors.transparent,
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child:
//  Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(Icons.arrow_right_alt),

//           Text(
//             'See More',
//             style: TextStyle(
//               fontSize: 13,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//         ],
//       ),
//     ),
//   ],
// ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
