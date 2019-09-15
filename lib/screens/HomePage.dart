import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/components/DropDownField.dart';
import 'package:heritage_shortcuts/constants.dart';
import 'package:heritage_shortcuts/components/InAppLogo.dart';
import 'package:heritage_shortcuts/GraphLogic.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:heritage_shortcuts/screens/ResultScreen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController textEditingControllerStart = TextEditingController();
  TextEditingController textEditingControllerDestination =
      TextEditingController();
  int _liftSelect = 1, _stairsSelect = 0;

  @override
  void dispose() {
    textEditingControllerDestination.dispose();
    textEditingControllerStart.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Container(
          alignment: Alignment.center,
          child: SingleChildScrollView(
            reverse: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                InAppLogo(),
                Padding(
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
                Row(
                  children: <Widget>[
                    Radio(
                        value: 1,
                        activeColor: Colors.blue[400],
                        groupValue: _liftSelect,
                        onChanged: (int value) {
                          setState(() {
                            _liftSelect = value;
                            _stairsSelect = 0;
                          });
                        }),
                    Text(
                      'Lift',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blue[400],
                        shadows: [
                          Shadow(
                            color: Colors.lightBlueAccent,
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                        value: 2,
                        activeColor: Colors.blue[400],
                        groupValue: _stairsSelect,
                        onChanged: (int value) {
                          setState(() {
                            _stairsSelect = value;
                            _liftSelect = 0;
                          });
                        }),
                    Text(
                      'Stairs',
                      style: TextStyle(
                        fontSize: 15.0,
                        color: Colors.blue[400],
                        shadows: [
                          Shadow(
                            color: Colors.lightBlueAccent,
                            blurRadius: 3.0,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          String startPosition = textEditingControllerStart.text;
          String destinationPosition = textEditingControllerDestination.text;

          if (startPosition == '' || destinationPosition == '')
            Fluttertoast.showToast(
                msg: 'Fill both the boxes!',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.blueGrey.withOpacity(0.5),
                textColor: Colors.blue[400]);
          else if (kGraphNodesMap[startPosition] == null ||
              kGraphNodesMap[destinationPosition] == null)
            Fluttertoast.showToast(
                msg: 'Not a valid location!',
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.BOTTOM,
                backgroundColor: Colors.blueGrey.withOpacity(0.5),
                textColor: Colors.blue[400]);
          else {
            List path = List();
            if (_liftSelect != 0) {
              setState(() {
                if (startPosition == 'ICT Basement' ||
                    destinationPosition == 'ICT Basement')
                  Fluttertoast.showToast(
                      msg: 'There\'s no Lift to ICT Basement!',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.blueGrey.withOpacity(0.5),
                      textColor: Colors.blue[400]);
                else if (startPosition == 'ICT 6th Floor' ||
                    destinationPosition == 'ICT 6th Floor')
                  Fluttertoast.showToast(
                      msg: 'There\'s no Lift to ICT 6th Floor!',
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.BOTTOM,
                      backgroundColor: Colors.blueGrey.withOpacity(0.5),
                      textColor: Colors.blue[400]);
              });
              path = ShortestPath()
                  .givePathByLift(startPosition, destinationPosition);
            } else {
              path = ShortestPath()
                  .givePathByStairs(startPosition, destinationPosition);
            }
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Results(
                path: path,
              );
            }));
          }
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
