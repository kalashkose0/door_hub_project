import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class listPage extends StatelessWidget {
  const listPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("List Page"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Center(
            child: Icon(Icons.hourglass_empty),
          )
        ],
      ),
      
    );
  }
}
