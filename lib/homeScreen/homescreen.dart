import 'package:flutter/material.dart';
import 'package:annurbusana_application_project/homeScreen/account/accountpage.dart';
import 'package:annurbusana_application_project/homeScreen/cart/cart.dart';
import 'package:annurbusana_application_project/homeScreen/explore/explore.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key key}) : super(key: key);

  @override
  _HomescreenState createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  int indexnumber = 0;
  List pages = [
    Explorepage(),
    Cartpage(),
    Accountpage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.black,
        showSelectedLabels: true,
        showUnselectedLabels: false,
        selectedLabelStyle: TextStyle(
          color: Colors.blue,
        ),
        // ignore: prefer_const_literals_to_create_immutables
        items: [
          BottomNavigationBarItem(
            icon: ImageIcon(
              AssetImage(
                "assets/icon/Explore@1X.png",
              ),
              size: 30,
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: Stack(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                ImageIcon(AssetImage("assets/icon/Icon_Cart@1X.png")),
              ],
            ),
            label: '.',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/icon/accou 5@1X.png")),
            label: '.',
          ),
        ],
        currentIndex: indexnumber,
        onTap: (index) {
          setState(() {
            indexnumber = index;
          });
        },
      ),
      body: pages[indexnumber],
    );
  }
}
