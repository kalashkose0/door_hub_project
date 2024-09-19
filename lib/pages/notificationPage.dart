import 'package:flutter/material.dart';

class notificationPage extends StatelessWidget {
  const notificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          // title: Icon(Icons.arrow_back),
          ),
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                height: 60,
                width: 330,
                color: Colors.transparent,
                child: const SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.vertical_align_bottom),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Notificaton",
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 90,
                      ),
                      Text(
                        "Recent ",
                        style: TextStyle(
                            color: Colors.blueAccent,
                            fontSize: 13,
                            decoration: TextDecoration.underline),
                      ),
                      Icon(Icons.arrow_drop_down)
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              Center(
                child: Container(
                  height: 550,
                  width: 330,
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Icon(
                        Icons.notification_add_sharp,
                        size: 150,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "No Notifications !",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "You dont't have any Notification yet. please place order",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: const Text('View all services'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
