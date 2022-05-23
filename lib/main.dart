import 'package:flutter/material.dart';

import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Справочник растений и цветов',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  MainPageState createState() => MainPageState();
}

enum TabItem { home, favorite, notification, account }

class MainPageState extends State<MainPage> {
  TabItem _currentItem = TabItem.home;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: _buildPage(),
      ),
    );
  }

  Widget _buildPage() {
    switch (_currentItem) {
      case TabItem.home:
        return HomePage();
      case TabItem.favorite:
      // return; Favorite
      case TabItem.notification:
      // return; Notification
      case TabItem.account:
      // return; Account
      default:
        return HomePage();
    }
  }
}
