import 'package:flutter/material.dart';

const List<String> kLocations = [
  'CB 1st Floor',
  'CB 2nd Floor',
  'CB 3rd Floor',
  'CB 4th Floor',
  'CB 5th Floor',
  'CB 6th Floor',
  'CB Ground Floor',
  'Library',
  'CME 1st Floor',
  'CME 2nd Floor',
  'CME 3rd Floor',
  'CME 4th Floor',
  'CME 5th Floor',
  'CME 6th Floor',
  'CME Ground Floor',
  'CME Basement',
  'ICT 1st Floor',
  'ICT 2nd Floor',
  'ICT 3rd Floor',
  'ICT 4th Floor',
  'ICT 5th Floor',
  'ICT 6th Floor',
  'ICT Ground Floor',
  'ICT Basement',
  'Canteen',
  'Gate 5'
];

const List<Map> kCreditList = <Map>[
  {
    "profilePic": AssetImage('images/IMG_20190625_175359-01C.jpeg'),
    "title": "Sayantak Karar",
    "color": Colors.white,
    "facebookURL": "https://www.facebook.com/sayantak.karar",
    "linkedInURL": "https://www.linkedin.com/in/sayantak-karar-93870716b",
    "twitterURL": "https://twitter.com/SayantakKarar",
    "instagramURL": "https://www.instagram.com/sayantakkarar/",
  },
  {
    "profilePic": AssetImage('images/SI_20190222_231242.jpeg'),
    "title": "Saikat Kundu",
    "color": Colors.white,
    "facebookURL": "https://www.facebook.com/saikat.kundu.16",
    "linkedInURL": "https://www.linkedin.com/in/saikat-kundu-63973014a/",
    "twitterURL": "https://twitter.com/",
    "instagramURL":
        "https://instagram.com/yet_another_storyteller?igshid=7w8m757fbsxo",
  },
];

const Map kGraphNodesMap = {
  'CME 6th Floor': 1,
  'CME 5th Floor': 2,
  'CME 4th Floor': 3,
  'CME 3th Floor': 4,
  'CME 2th Floor': 5,
  'CME Ground Floor': 6,
  'CB 6th Floor': 7,
  'CB 5th Floor': 8,
  'CB 4th Floor': 9,
  'CB 3th Floor': 10,
  'CB 2th Floor': 11,
  'CB Ground Floor': 12,
  'ICT 6th Floor': 13,
  'ICT 5th Floor': 14,
  'ICT 4th Floor': 15,
  'ICT 3th Floor': 16,
  'ICT Ground Floor': 17,
  'ICT 2th Floor': 18,
  'CME Basement': 19,
  'Library': 20,
  'ICT Basement': 21,
  'Gate 5': 22,
  'Canteen': 23,
  'CME 1st Floor': 24,
  'CB 1st Floor': 25,
  'ICT 1st Floor': 26,
};
// TODO#1: Add the four 2D Lists
// TODO#2: Write backend path generating algorithm in a separate file in a .dart file in lib (outside any subfolder)
