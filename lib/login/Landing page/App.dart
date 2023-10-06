import 'package:flutter/material.dart';
import 'package:homepage1/login/Landing%20page/OpenOrder/Todo/homepage.dart';
import 'package:homepage1/profilepage/profile.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomePage(),
    ProfilePage(),
    OderPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Speed go'),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.abc))
        ],
        backgroundColor: Color.fromARGB(255, 251, 6, 6),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.location_city),
        ),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'Your Order',
          ),
        ],
      ),
    );
  }
}

class OderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('order'),
    );
  }
}
