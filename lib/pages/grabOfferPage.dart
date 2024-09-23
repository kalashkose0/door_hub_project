import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class grabOfferPage extends StatelessWidget {
  const grabOfferPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Offer's"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Text(
            "No Offer right Now",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
          ),
          Center(
            child: Icon(Icons.hourglass_empty),
          )
        ],
      ),
    );
  }
}
