import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/components/DropDownField.dart';
import 'package:heritage_shortcuts/constants.dart';
import 'package:heritage_shortcuts/components/InAppLogo.dart';
import 'package:heritage_shortcuts/GraphLogic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingControllerStart = TextEditingController();
  TextEditingController textEditingControllerDestination =
      TextEditingController();

  @override
  void dispose() {
    textEditingControllerDestination.dispose();
    textEditingControllerStart.dispose();
    super.dispose();
  }

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
                  controller: textEditingControllerStart,
                  onValueChanged: (value) {
                    print(value);
                  },
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
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
                controller: textEditingControllerDestination,
                onValueChanged: (value) {
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
//          print('${textEditingControllerStart.text}!');
//          print('${textEditingControllerDestination.text}!');

          String startPosition = textEditingControllerStart.text;
          String destinationPosition = textEditingControllerDestination.text;

          ShortestPath ob = ShortestPath();

          List path = ob.givePathByLift(startPosition, destinationPosition);
          print(path);
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
