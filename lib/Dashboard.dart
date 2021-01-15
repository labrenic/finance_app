import 'package:flutter/material.dart';
import 'package:finance_app/Tabs/Search.dart';
import 'package:finance_app/Tabs/Settings.dart';
import 'package:finance_app/Tabs/Home.dart';
import 'package:finance_app/Tabs/Portfolio.dart';
import 'package:finance_app/Tabs/News.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {

  int _currentTabIndex = 0;
  final List<Widget> _children = [
    Home(),
    Portfolio(),
    Search(),
    News(),
    Settings(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            currentIndex: _currentTabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            onTap: (int index) {
              setState(() {
                _currentTabIndex = index;
              });
            },
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: Icon(Icons.trending_up),
                title: Text('Home'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.pie_chart),
                title: Text('Portfolio'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                title: Text('Search'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.message),
                title: Text('News'),
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
                title: Text('Settings'),
              )
            ]
        ),
        body: _children[_currentTabIndex],
    );
  }
}
