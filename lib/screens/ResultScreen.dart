import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:heritage_shortcuts/components/ResultListTile.dart';
import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/constants.dart';

class Results extends StatefulWidget {
  final List<int> path;
  Results({@required this.path});
  @override
  _ResultsState createState() => _ResultsState();
}

class _ResultsState extends State<Results> {
  Map graphNodesMapInverse = inverse(kGraphNodesMap);

  Widget resultListTile(int index) {
    if (widget.path[index] <= 26) {
      return BlurBackground(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            '${graphNodesMapInverse[widget.path[index]]}',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20.0,
              color: Colors.white,
              letterSpacing: 2.0,
              shadows: [
                Shadow(
                  color: Colors.lightBlueAccent,
                  blurRadius: 4.0,
                ),
              ],
            ),
          ),
        ),
      );
    } else {
      return Column(
        children: <Widget>[
          Icon(
            Icons.fiber_manual_record,
            size: 9.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Icon(
            Icons.fiber_manual_record,
            size: 11.0,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '${graphNodesMapInverse[widget.path[index]]}',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16.0,
                color: Colors.white,
                letterSpacing: 2.0,
                shadows: [
                  Shadow(
                    color: Colors.lightBlueAccent,
                    blurRadius: 4.0,
                  ),
                ],
              ),
            ),
          ),
          Icon(
            Icons.fiber_manual_record,
            size: 12.0,
          ),
          SizedBox(
            height: 8.0,
          ),
          Icon(
            Icons.arrow_drop_down_circle,
            size: 15.0,
          ),
        ],
      );
    }
  }

  Widget displayTips(int index) {
    if (index == widget.path.length - 1)
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'Tip: ${tips[Random().nextInt(tips.length)]}',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 16.0,
            color: Colors.white,
            letterSpacing: 2.0,
            shadows: [
              Shadow(
                color: Colors.lightBlueAccent,
                blurRadius: 4.0,
              ),
            ],
          ),
        ),
      );
    else
      return Text(
        '',
      );
  }

  @override
  Widget build(BuildContext context) {
    print(widget.path);
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: FloatingActionButton(
                  mini: true,
                  backgroundColor: Colors.blue[400],
                  child: Icon(
                    Icons.chevron_left,
                    size: 20.0,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: widget.path.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: resultListTile(index),
                        ),
                        displayTips(index),
                      ],
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
