import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/components/DropDownField.dart';
import 'package:heritage_shortcuts/constants.dart';

import 'ResultScreen.dart';

import 'package:heritage_shortcuts/components/InAppLogo.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String startPosition;
  String endPosition;
  TextEditingController controller = new TextEditingController();
  String start, end;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
//            Padding(
//              padding:
//                  const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
//              child: Text(
//                'Gonna attend the class? Really?',
//                style: TextStyle(
//                  fontSize: 20.0,
//                  color: Colors.blue[400],
//                  shadows: [
//                    Shadow(
//                      color: Colors.lightBlueAccent,
//                      blurRadius: 3.0,
//                    ),
//                  ],
//                ),
//              ),
//            ),
            InAppLogo(),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: DropDownField(
                  icon: Icon(
                    Icons.location_on,
                    color: Colors.blue[400],
                  ),
                  required: false,
                  hintText: 'Choose a Location',
                  labelText: 'Start',
                  items: kLocations,
                  strict: false,
                  onValueChanged: (value) {
                    startPosition = value;
                    print(value);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: DropDownField(
                icon: Icon(
                  Icons.location_on,
                  color: Colors.blue[400],
                ),
                required: false,
                hintText: 'Choose a Location',
                labelText: 'Destination',
                items: kLocations,
                strict: false,
                onValueChanged: (value) {
                  endPosition = value;
                  print(value);
                },
              ),
            ),
          ],
        ),
      ),
      //TODO#4: Add RadioButtons for stair/lift selection (My job)
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //TODO#3: Print generated shortest path by accessing nodes as shown
          if (kGraphNodesMap['$startPosition'] <= 26 &&
              kGraphNodesMap['$startPosition'] > 0)
            print(kGraphNodesMap['$startPosition']);
          if (kGraphNodesMap['$endPosition'] <= 26 &&
              kGraphNodesMap['$endPosition'] > 0)
            print(kGraphNodesMap['$endPosition']);
        },
        backgroundColor: Colors.blue[400],
        child: Icon(
          Icons.chevron_right,
          size: 30.0,
          color: Colors.white,
        ),
      ),
    );
  }
}
