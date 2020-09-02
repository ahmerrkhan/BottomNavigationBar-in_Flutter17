import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Bottom Navigation Bar"),
      ),
      body: Container(),
      bottomNavigationBar: BottomNavigationBar(
        //In BottomNAvigationBar length of icons >=2
        backgroundColor: Colors.lightBlueAccent,
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            title: Text("Time"),
            icon: Icon(Icons.access_time),
          ),
          BottomNavigationBarItem(
            title: Text("Hours"),
            icon: Icon(Icons.hourglass_empty),
          ),
          BottomNavigationBarItem(
            title: Text("navigation"),
            icon: Icon(
              Icons.navigation,
            ),
          ),
        ],
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}
