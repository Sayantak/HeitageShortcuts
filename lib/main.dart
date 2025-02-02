import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/screens/HomePage.dart';
import 'screens/GuillotineScreen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HitNav',
      theme: ThemeData(
        brightness: Brightness.dark,
        toggleableActiveColor: Colors.blue[400],
        accentColor: Colors.blue[400],
        primarySwatch: Colors.blueGrey,
        textSelectionHandleColor: Colors.blue[400],
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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      resizeToAvoidBottomPadding: false,
      body: SafeArea(
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
      ),
    );
  }
}
