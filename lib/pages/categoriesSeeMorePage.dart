import 'package:fixitfast_2/categoriesSeeMorePage/acRepair.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class categoriesSeeMorePage extends StatelessWidget {
  const categoriesSeeMorePage({super.key});

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        title: Text('Search Category'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'All Categories',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 7,
                crossAxisSpacing: 10,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => acRepair()));
                    },
                    child: Container(
                      height: 85,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 190, 111),
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Column(
                        children: [
                          Image.asset(
                            'assets/images/AC.png',
                            height: 60,
                          ),
                          const Text(
                            'AC',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 156, 199, 248),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/pipe.png',
                          height: 60,
                        ),
                        const Text(
                          'plumber',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 235, 181, 249),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/cleaning.png',
                          height: 60,
                        ),
                        const Text(
                          'Cleaning',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 226, 235, 127),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/shift.png',
                          height: 60,
                        ),
                        const Text(
                          'Shifting',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 85,
                    width: 70,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 244, 183, 198),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Column(
                      children: [
                        Image.asset(
                          'assets/images/electric.png',
                          height: 60,
                        ),
                        const Text(
                          'Electrical',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => categoriesSeeMorePage()),
                      );
                    },
                    child: Container(
                      height: 85,
                      width: 130,
                      decoration: const BoxDecoration(
                        shape: BoxShape.rectangle,
                        color: Colors.transparent,
                      ),
                      child: const Column(
                        children: [
                          // Image.asset(
                          //   'assets/images/AC.png',
                          //   height: 60,
                          // ),
                          Icon(Icons.arrow_right_alt),
                          Text(
                            '& many More soon .....',
                            style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              // GridView.builder(
              //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              //       crossAxisCount: 3, mainAxisSpacing: 5, crossAxisSpacing: 5),
              //   itemBuilder: (context, index) {
              //     return Container(
              //       decoration: BoxDecoration(
              //         color: Colors.grey[200],
              //         borderRadius: BorderRadius.circular(10),
              //       ),
              //       child: Column(
              //         mainAxisAlignment: MainAxisAlignment.center,
              //         children: [
              //           Icon(Icons.category, size: 40),
              //           const SizedBox(height: 8),
              //           Text(
              //             "hello",
              //             textAlign: TextAlign.center,
              //             style: TextStyle(
              //               fontSize: 14,
              //             ),
              //           ),
              //         ],
              //       ),
              //     );
              //   },
              // ),
            )
          ],
        ),
      ),
    );
  }
}
