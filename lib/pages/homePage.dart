import 'package:fixitfast_2/pages/categoriesSeeMorePage.dart';
import 'package:fixitfast_2/pages/notificationPage.dart';
import 'package:fixitfast_2/pages/profilePage.dart';
import 'package:fixitfast_2/uihelper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

// const Text(
//           'Current Location',
//           style: TextStyle(fontSize: 15),
//         )
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Current Location',
          style: TextStyle(fontSize: 15),
        ),
        leading: Builder(
          builder: (context) => IconButton(
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Icon(Icons.menu),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_active_outlined),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => notificationPage())));
            },
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => profilePage()),
                );
              },
              child: const DrawerHeader(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 197, 255, 252),
                ),
                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text('Kalash'),
                  subtitle: Text('Hello here 👌'),
                  trailing: Icon(Icons.arrow_forward),
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.calendar_month_rounded),
              title: const Text('Calender'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.wallet),
              title: const Text('Payement method'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.location_on),
              title: const Text('Address'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.notifications_active_outlined),
              title: const Text('Notification'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.percent),
              title: const Text('Offers'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.person_3_outlined),
              title: const Text('Refer a Friend'),
              onTap: () {},
            ),
            ListTile(
              leading: const Icon(Icons.phone),
              title: const Text('Support'),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {},
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          height: 620,
          width: 330,
          color: Colors.transparent,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                UiHelper.customText("HELLO KALASH 🖐️", FontWeight.normal, 12,
                    Colors.grey, "blue"),
                const SizedBox(height: 10),
                const Text(
                  'What you are Looking for today ',
                  style: TextStyle(
                      fontSize: 25,
                      color: Color.fromARGB(218, 49, 40, 137),
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(height: 10),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search what you need...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 210, 245, 225),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Offer AC Services !",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Get 25%",
                              style: TextStyle(
                                  fontSize: 55, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            // ElevatedButton(
                            //   onPressed: () {

                            //   },
                            //   child: const Text('Grab Offer >'),
                            // ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 150,
                        width: 250,
                        decoration: BoxDecoration(
                          color: Color.fromARGB(255, 232, 240, 179),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Offer Shifting Services !",
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Get 25%",
                              style: TextStyle(
                                  fontSize: 50, fontWeight: FontWeight.w700),
                            ),
                            SizedBox(
                              height: 2,
                            ),
                            // ElevatedButton(
                            //   onPressed: () {
                            //     // Handle "Grab Offer" button click here
                            //   },
                            //   child: const Text('Grab Offer >'),
                            // ),
                          ],
                        ),
                      ),
                      Container(
                        height: 85,
                        width: 70,
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
                              'See More',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Categories",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
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
                      const SizedBox(
                        width: 10,
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
                      const SizedBox(
                        width: 10,
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
                      const SizedBox(
                        width: 10,
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
                      const SizedBox(
                        width: 10,
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
                      const SizedBox(
                        width: 10,
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
                          width: 70,
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
                                'See More',
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
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Cleaning's",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 160,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                // GestureDetector(
                                //   onTap: () {
                                //     Navigator.push(
                                //         context,
                                //         MaterialPageRoute(
                                //             builder: ((context) =>
                                //                 const CleanningScreen())));
                                //   },
                                // ),
                                Image.asset(
                                  'assets/images/c3.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  'Floor Cleaner',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/c2.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  'Hospital Cleaner',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/c1.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  'Washer',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/c4.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  'Office Cleaner',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/c5.jpg',
                                  width: 100,
                                  height: 100,
                                  fit: BoxFit.cover,
                                ),
                                const Text(
                                  'Cleaner',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 85,
                        width: 70,
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
                              'See More',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Construction's",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 120,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/const1.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'House',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/const2.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Buildings',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/const3.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Sites',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/const4.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'major projects',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/const5.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Design',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 85,
                        width: 70,
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
                              'See More',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Vehicle's",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 23,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 180,
                    ),
                    Text(
                      "See all",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontSize: 13,
                          decoration: TextDecoration.underline),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/v1.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '2 wheeler',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/v2.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '3 wheeler',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/v3.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '4 wheeler',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/v4.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              '4 wheeler',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/v5.png',
                              width: 100,
                              height: 100,
                              fit: BoxFit.cover,
                            ),
                            const Text(
                              'Trucks',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 85,
                        width: 70,
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
                              'See More',
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_outlined),
            label: 'notification',
          ),
        ],
        //  saved
        //  profile
      ),
    );
  }
}
