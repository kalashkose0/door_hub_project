import 'package:fixitfast_2/screens/SplashScreen4.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class SplashScreen3 extends StatelessWidget {
  const SplashScreen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 22,
          ),

          // photo ke jaga UI banana hai
          Stack(
            children: [
              Container(
                height: 720,
                width: 400,
                child: Image.asset(
                  "assets/images/SS3.png",
                  fit: BoxFit.fill,
                ),
              ),
              Positioned(
                bottom: 40,
                left: 140,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SplashScreen4()));
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: const Size(10, 50),
                    backgroundColor: Colors.blue,
                  ),
                  child: Icon(Icons.chevron_right_rounded),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
