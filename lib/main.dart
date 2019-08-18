import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/screens/HomePage.dart';
import 'screens/GuillotineScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Heritage Shorts',
      theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.purple[300],
        primarySwatch: Colors.blueGrey,
        primaryColorDark: Colors.purple[300],
      ),
      home: WelcomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      child: Container(
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            HomePage(),
            GuillotineMenu(),
          ],
        ),
      ),
    );
  }
}
