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
  'CME 3rd Floor': 4,
  'CME 2nd Floor': 5,
  'CME Ground Floor': 6,
  'CB 6th Floor': 7,
  'CB 5th Floor': 8,
  'CB 4th Floor': 9,
  'CB 3rd Floor': 10,
  'CB 2nd Floor': 11,
  'CB Ground Floor': 12,
  'ICT 6th Floor': 13,
  'ICT 5th Floor': 14,
  'ICT 4th Floor': 15,
  'ICT 3rd Floor': 16,
  'ICT Ground Floor': 17,
  'ICT 2nd Floor': 18,
  'CME Basement': 19,
  'Library': 20,
  'ICT Basement': 21,
  'Gate 5': 22,
  'Canteen': 23,
  'CME 1st Floor': 24,
  'CB 1st Floor': 25,
  'ICT 1st Floor': 26,
  'Stairs': 27,
  'Lift': 28,
  'Connectors': 29,
  'Road': 30
};

const List<List<double>> kLift_distance = [
  [
    0.000000,
    0.500000,
    1.000000,
    1.500000,
    2.000000,
    3.000000,
    3.200000,
    2.700000,
    2.200000,
    2.700000,
    3.200000,
    4.200000,
    5.900000,
    4.900000,
    3.400000,
    3.900000,
    5.700000,
    4.400000,
    3.500000,
    4.700000,
    6.200000,
    6.000000,
    6.000000,
    2.500000,
    3.700000,
    5.900000,
  ],
  [
    0.500000,
    0.000000,
    0.500000,
    1.000000,
    1.500000,
    2.500000,
    2.700000,
    2.200000,
    1.700000,
    2.200000,
    2.700000,
    3.700000,
    5.400000,
    4.400000,
    2.900000,
    3.400000,
    5.200000,
    3.900000,
    3.000000,
    4.200000,
    5.700000,
    5.500000,
    5.500000,
    2.000000,
    3.200000,
    5.400000,
  ],
  [
    1.000000,
    0.500000,
    0.000000,
    0.500000,
    1.000000,
    2.000000,
    2.200000,
    1.700000,
    1.200000,
    1.700000,
    2.200000,
    3.200000,
    4.900000,
    3.900000,
    2.400000,
    2.900000,
    4.700000,
    3.400000,
    2.500000,
    3.700000,
    5.200000,
    5.000000,
    5.000000,
    1.500000,
    2.700000,
    4.900000,
  ],
  [
    1.500000,
    1.000000,
    0.500000,
    0.000000,
    0.500000,
    1.500000,
    2.700000,
    2.200000,
    1.700000,
    1.200000,
    1.700000,
    2.700000,
    5.400000,
    4.400000,
    2.900000,
    2.400000,
    4.200000,
    2.900000,
    2.000000,
    3.200000,
    4.700000,
    4.500000,
    4.500000,
    1.000000,
    2.200000,
    4.400000,
  ],
  [
    2.000000,
    1.500000,
    1.000000,
    0.500000,
    0.000000,
    1.000000,
    3.200000,
    2.700000,
    2.200000,
    1.700000,
    1.200000,
    2.200000,
    5.900000,
    4.900000,
    3.400000,
    2.900000,
    3.700000,
    2.400000,
    1.500000,
    2.700000,
    4.200000,
    4.000000,
    4.000000,
    0.500000,
    1.700000,
    3.900000,
  ],
  [
    3.000000,
    2.500000,
    2.000000,
    1.500000,
    1.000000,
    0.000000,
    4.200000,
    3.700000,
    3.200000,
    2.700000,
    2.200000,
    1.500000,
    6.900000,
    5.900000,
    4.400000,
    3.900000,
    3.000000,
    3.400000,
    0.500000,
    2.000000,
    3.500000,
    3.000000,
    3.000000,
    0.500000,
    2.000000,
    4.500000,
  ],
  [
    3.200000,
    2.700000,
    2.200000,
    2.700000,
    3.200000,
    4.200000,
    0.000000,
    0.500000,
    1.000000,
    1.500000,
    2.000000,
    3.000000,
    4.700000,
    3.700000,
    2.200000,
    2.700000,
    4.500000,
    3.200000,
    4.700000,
    3.500000,
    5.000000,
    7.200000,
    7.200000,
    3.700000,
    2.500000,
    4.700000,
  ],
  [
    2.700000,
    2.200000,
    1.700000,
    2.200000,
    2.700000,
    3.700000,
    0.500000,
    0.000000,
    0.500000,
    1.000000,
    1.500000,
    2.500000,
    4.200000,
    3.200000,
    1.700000,
    2.200000,
    4.000000,
    2.700000,
    4.200000,
    3.000000,
    4.500000,
    6.700000,
    6.700000,
    3.200000,
    2.000000,
    4.200000,
  ],
  [
    2.200000,
    1.700000,
    1.200000,
    1.700000,
    2.200000,
    3.200000,
    1.000000,
    0.500000,
    0.000000,
    0.500000,
    1.000000,
    2.000000,
    3.700000,
    2.700000,
    1.200000,
    1.700000,
    3.500000,
    2.200000,
    3.700000,
    2.500000,
    4.000000,
    6.200000,
    6.200000,
    2.700000,
    1.500000,
    3.700000,
  ],
  [
    2.700000,
    2.200000,
    1.700000,
    1.200000,
    1.700000,
    2.700000,
    1.500000,
    1.000000,
    0.500000,
    0.000000,
    0.500000,
    1.500000,
    4.200000,
    3.200000,
    1.700000,
    1.200000,
    3.000000,
    1.700000,
    3.200000,
    2.000000,
    3.500000,
    5.700000,
    5.700000,
    2.200000,
    1.000000,
    3.200000,
  ],
  [
    3.200000,
    2.700000,
    2.200000,
    1.700000,
    1.200000,
    2.200000,
    2.000000,
    1.500000,
    1.000000,
    0.500000,
    0.000000,
    1.000000,
    4.700000,
    3.700000,
    2.200000,
    1.700000,
    2.500000,
    1.200000,
    2.700000,
    1.500000,
    3.000000,
    5.200000,
    5.200000,
    1.700000,
    0.500000,
    2.700000,
  ],
  [
    4.200000,
    3.700000,
    3.200000,
    2.700000,
    2.200000,
    1.500000,
    3.000000,
    2.500000,
    2.000000,
    1.500000,
    1.000000,
    0.000000,
    5.700000,
    4.700000,
    3.200000,
    2.700000,
    1.500000,
    2.200000,
    2.000000,
    0.500000,
    2.000000,
    4.500000,
    4.500000,
    2.000000,
    0.500000,
    3.000000,
  ],
  [
    5.900000,
    5.400000,
    4.900000,
    5.400000,
    5.900000,
    6.900000,
    4.700000,
    4.200000,
    3.700000,
    4.200000,
    4.700000,
    5.700000,
    0.000000,
    1.000000,
    2.500000,
    4.000000,
    7.200000,
    5.500000,
    7.400000,
    6.200000,
    7.700000,
    9.900000,
    9.900000,
    6.400000,
    5.200000,
    7.000000,
  ],
  [
    4.900000,
    4.400000,
    3.900000,
    4.400000,
    4.900000,
    5.900000,
    3.700000,
    3.200000,
    2.700000,
    3.200000,
    3.700000,
    4.700000,
    1.000000,
    0.000000,
    1.500000,
    3.000000,
    6.200000,
    4.500000,
    6.400000,
    5.200000,
    6.700000,
    8.900000,
    8.900000,
    5.400000,
    4.200000,
    6.000000,
  ],
  [
    3.400000,
    2.900000,
    2.400000,
    2.900000,
    3.400000,
    4.400000,
    2.200000,
    1.700000,
    1.200000,
    1.700000,
    2.200000,
    3.200000,
    2.500000,
    1.500000,
    0.000000,
    1.500000,
    4.700000,
    3.000000,
    4.900000,
    3.700000,
    5.200000,
    7.400000,
    7.400000,
    3.900000,
    2.700000,
    4.500000,
  ],
  [
    3.900000,
    3.400000,
    2.900000,
    2.400000,
    2.900000,
    3.900000,
    2.700000,
    2.200000,
    1.700000,
    1.200000,
    1.700000,
    2.700000,
    4.000000,
    3.000000,
    1.500000,
    0.000000,
    4.200000,
    1.500000,
    4.400000,
    3.200000,
    4.700000,
    6.900000,
    6.900000,
    3.400000,
    2.200000,
    3.000000,
  ],
  [
    5.700000,
    5.200000,
    4.700000,
    4.200000,
    3.700000,
    3.000000,
    4.500000,
    4.000000,
    3.500000,
    3.000000,
    2.500000,
    1.500000,
    7.200000,
    6.200000,
    4.700000,
    4.200000,
    0.000000,
    3.000000,
    3.500000,
    2.000000,
    0.500000,
    6.000000,
    6.000000,
    3.500000,
    2.000000,
    1.500000,
  ],
  [
    4.400000,
    3.900000,
    3.400000,
    2.900000,
    2.400000,
    3.400000,
    3.200000,
    2.700000,
    2.200000,
    1.700000,
    1.200000,
    2.200000,
    5.500000,
    4.500000,
    3.000000,
    1.500000,
    3.000000,
    0.000000,
    3.900000,
    2.700000,
    3.500000,
    6.400000,
    6.400000,
    2.900000,
    1.700000,
    1.500000,
  ],
  [
    3.500000,
    3.000000,
    2.500000,
    2.000000,
    1.500000,
    0.500000,
    4.700000,
    4.200000,
    3.700000,
    3.200000,
    2.700000,
    2.000000,
    7.400000,
    6.400000,
    4.900000,
    4.400000,
    3.500000,
    3.900000,
    0.000000,
    2.500000,
    4.000000,
    3.200000,
    3.200000,
    1.000000,
    2.500000,
    5.000000,
  ],
  [
    4.700000,
    4.200000,
    3.700000,
    3.200000,
    2.700000,
    2.000000,
    3.500000,
    3.000000,
    2.500000,
    2.000000,
    1.500000,
    0.500000,
    6.200000,
    5.200000,
    3.700000,
    3.200000,
    2.000000,
    2.700000,
    2.500000,
    0.000000,
    2.500000,
    5.000000,
    5.000000,
    2.500000,
    1.000000,
    3.500000,
  ],
  [
    6.200000,
    5.700000,
    5.200000,
    4.700000,
    4.200000,
    3.500000,
    5.000000,
    4.500000,
    4.000000,
    3.500000,
    3.000000,
    2.000000,
    7.700000,
    6.700000,
    5.200000,
    4.700000,
    0.500000,
    3.500000,
    4.000000,
    2.500000,
    0.000000,
    6.500000,
    6.500000,
    4.000000,
    2.500000,
    2.000000,
  ],
  [
    6.000000,
    5.500000,
    5.000000,
    4.500000,
    4.000000,
    3.000000,
    7.200000,
    6.700000,
    6.200000,
    5.700000,
    5.200000,
    4.500000,
    9.900000,
    8.900000,
    7.400000,
    6.900000,
    6.000000,
    6.400000,
    3.200000,
    5.000000,
    6.500000,
    0.000000,
    0.200000,
    3.500000,
    5.000000,
    7.500000,
  ],
  [
    6.000000,
    5.500000,
    5.000000,
    4.500000,
    4.000000,
    3.000000,
    7.200000,
    6.700000,
    6.200000,
    5.700000,
    5.200000,
    4.500000,
    9.900000,
    8.900000,
    7.400000,
    6.900000,
    6.000000,
    6.400000,
    3.200000,
    5.000000,
    6.500000,
    0.200000,
    0.000000,
    3.500000,
    5.000000,
    7.500000,
  ],
  [
    2.500000,
    2.000000,
    1.500000,
    1.000000,
    0.500000,
    0.500000,
    3.700000,
    3.200000,
    2.700000,
    2.200000,
    1.700000,
    2.000000,
    6.400000,
    5.400000,
    3.900000,
    3.400000,
    3.500000,
    2.900000,
    1.000000,
    2.500000,
    4.000000,
    3.500000,
    3.500000,
    0.000000,
    2.200000,
    4.400000,
  ],
  [
    3.700000,
    3.200000,
    2.700000,
    2.200000,
    1.700000,
    2.000000,
    2.500000,
    2.000000,
    1.500000,
    1.000000,
    0.500000,
    0.500000,
    5.200000,
    4.200000,
    2.700000,
    2.200000,
    2.000000,
    1.700000,
    2.500000,
    1.000000,
    2.500000,
    5.000000,
    5.000000,
    2.200000,
    0.000000,
    3.200000,
  ],
  [
    5.900000,
    5.400000,
    4.900000,
    4.400000,
    3.900000,
    4.500000,
    4.700000,
    4.200000,
    3.700000,
    3.200000,
    2.700000,
    3.000000,
    7.000000,
    6.000000,
    4.500000,
    3.000000,
    1.500000,
    1.500000,
    5.000000,
    3.500000,
    2.000000,
    7.500000,
    7.500000,
    4.400000,
    3.200000,
    0.000000,
  ]
];

const List<List<double>> kStair_distance = [
  [
    0.000000,
    1.000000,
    2.000000,
    3.000000,
    4.000000,
    6.000000,
    5.200000,
    4.200000,
    3.200000,
    4.200000,
    5.200000,
    7.200000,
    6.400000,
    5.400000,
    4.400000,
    5.400000,
    8.400000,
    6.400000,
    6.500000,
    7.700000,
    8.900000,
    9.000000,
    9.000000,
    5.000000,
    6.200000,
    7.400000,
  ],
  [
    1.000000,
    0.000000,
    1.000000,
    2.000000,
    3.000000,
    5.000000,
    4.200000,
    3.200000,
    2.200000,
    3.200000,
    4.200000,
    6.200000,
    5.400000,
    4.400000,
    3.400000,
    4.400000,
    7.400000,
    5.400000,
    5.500000,
    6.700000,
    7.900000,
    8.000000,
    8.000000,
    4.000000,
    5.200000,
    6.400000,
  ],
  [
    2.000000,
    1.000000,
    0.000000,
    1.000000,
    2.000000,
    4.000000,
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    3.200000,
    5.200000,
    4.400000,
    3.400000,
    2.400000,
    3.400000,
    6.400000,
    4.400000,
    4.500000,
    5.700000,
    6.900000,
    7.000000,
    7.000000,
    3.000000,
    4.200000,
    5.400000,
  ],
  [
    3.000000,
    2.000000,
    1.000000,
    0.000000,
    1.000000,
    3.000000,
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    4.200000,
    5.400000,
    4.400000,
    3.400000,
    2.400000,
    5.400000,
    3.400000,
    3.500000,
    4.700000,
    5.900000,
    6.000000,
    6.000000,
    2.000000,
    3.200000,
    4.400000,
  ],
  [
    4.000000,
    3.000000,
    2.000000,
    1.000000,
    0.000000,
    2.000000,
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    3.200000,
    6.400000,
    5.400000,
    4.400000,
    3.400000,
    4.400000,
    2.400000,
    2.500000,
    3.700000,
    4.900000,
    5.000000,
    5.000000,
    1.000000,
    2.200000,
    3.400000,
  ],
  [
    6.000000,
    5.000000,
    4.000000,
    3.000000,
    2.000000,
    0.000000,
    7.200000,
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    1.500000,
    8.400000,
    7.400000,
    6.400000,
    5.400000,
    3.000000,
    4.400000,
    0.500000,
    2.000000,
    3.500000,
    3.000000,
    3.000000,
    1.000000,
    2.500000,
    4.000000,
  ],
  [
    5.200000,
    4.200000,
    3.200000,
    4.200000,
    5.200000,
    7.200000,
    0.000000,
    1.000000,
    2.000000,
    3.000000,
    4.000000,
    6.000000,
    5.200000,
    4.200000,
    3.200000,
    4.200000,
    7.200000,
    5.200000,
    7.700000,
    6.500000,
    7.700000,
    10.200000,
    10.200000,
    6.200000,
    5.000000,
    6.200000,
  ],
  [
    4.200000,
    3.200000,
    2.200000,
    3.200000,
    4.200000,
    6.200000,
    1.000000,
    0.000000,
    1.000000,
    2.000000,
    3.000000,
    5.000000,
    4.200000,
    3.200000,
    2.200000,
    3.200000,
    6.200000,
    4.200000,
    6.700000,
    5.500000,
    6.700000,
    9.200000,
    9.200000,
    5.200000,
    4.000000,
    5.200000,
  ],
  [
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    3.200000,
    5.200000,
    2.000000,
    1.000000,
    0.000000,
    1.000000,
    2.000000,
    4.000000,
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    5.200000,
    3.200000,
    5.700000,
    4.500000,
    5.700000,
    8.200000,
    8.200000,
    4.200000,
    3.000000,
    4.200000,
  ],
  [
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    4.200000,
    3.000000,
    2.000000,
    1.000000,
    0.000000,
    1.000000,
    3.000000,
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    4.200000,
    2.200000,
    4.700000,
    3.500000,
    4.700000,
    7.200000,
    7.200000,
    3.200000,
    2.000000,
    3.200000,
  ],
  [
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    3.200000,
    4.000000,
    3.000000,
    2.000000,
    1.000000,
    0.000000,
    2.000000,
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    3.200000,
    1.200000,
    3.700000,
    2.500000,
    3.700000,
    6.200000,
    6.200000,
    2.200000,
    1.000000,
    2.200000,
  ],
  [
    7.200000,
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    1.500000,
    6.000000,
    5.000000,
    4.000000,
    3.000000,
    2.000000,
    0.000000,
    7.200000,
    6.200000,
    5.200000,
    4.200000,
    1.500000,
    3.200000,
    2.000000,
    0.500000,
    2.000000,
    4.500000,
    4.500000,
    2.500000,
    1.000000,
    2.500000,
  ],
  [
    6.400000,
    5.400000,
    4.400000,
    5.400000,
    6.400000,
    8.400000,
    5.200000,
    4.200000,
    3.200000,
    4.200000,
    5.200000,
    7.200000,
    0.000000,
    1.000000,
    2.000000,
    3.000000,
    6.000000,
    4.000000,
    8.900000,
    7.700000,
    6.500000,
    11.400000,
    11.400000,
    7.400000,
    6.200000,
    5.000000,
  ],
  [
    5.400000,
    4.400000,
    3.400000,
    4.400000,
    5.400000,
    7.400000,
    4.200000,
    3.200000,
    2.200000,
    3.200000,
    4.200000,
    6.200000,
    1.000000,
    0.000000,
    1.000000,
    2.000000,
    5.000000,
    3.000000,
    7.900000,
    6.700000,
    5.500000,
    10.400000,
    10.400000,
    6.400000,
    5.200000,
    4.000000,
  ],
  [
    4.400000,
    3.400000,
    2.400000,
    3.400000,
    4.400000,
    6.400000,
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    3.200000,
    5.200000,
    2.000000,
    1.000000,
    0.000000,
    1.000000,
    4.000000,
    2.000000,
    6.900000,
    5.700000,
    4.500000,
    9.400000,
    9.400000,
    5.400000,
    4.200000,
    3.000000,
  ],
  [
    5.400000,
    4.400000,
    3.400000,
    2.400000,
    3.400000,
    5.400000,
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    2.200000,
    4.200000,
    3.000000,
    2.000000,
    1.000000,
    0.000000,
    3.000000,
    1.000000,
    5.900000,
    4.700000,
    3.500000,
    8.400000,
    8.400000,
    4.400000,
    3.200000,
    2.000000,
  ],
  [
    8.400000,
    7.400000,
    6.400000,
    5.400000,
    4.400000,
    3.000000,
    7.200000,
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    1.500000,
    6.000000,
    5.000000,
    4.000000,
    3.000000,
    0.000000,
    2.000000,
    3.500000,
    2.000000,
    0.500000,
    6.000000,
    6.000000,
    4.000000,
    2.500000,
    1.000000,
  ],
  [
    6.400000,
    5.400000,
    4.400000,
    3.400000,
    2.400000,
    4.400000,
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    1.200000,
    3.200000,
    4.000000,
    3.000000,
    2.000000,
    1.000000,
    2.000000,
    0.000000,
    4.900000,
    3.700000,
    2.500000,
    7.400000,
    7.400000,
    3.400000,
    2.200000,
    1.000000,
  ],
  [
    6.500000,
    5.500000,
    4.500000,
    3.500000,
    2.500000,
    0.500000,
    7.700000,
    6.700000,
    5.700000,
    4.700000,
    3.700000,
    2.000000,
    8.900000,
    7.900000,
    6.900000,
    5.900000,
    3.500000,
    4.900000,
    0.000000,
    2.500000,
    4.000000,
    3.200000,
    3.200000,
    1.500000,
    3.000000,
    4.500000,
  ],
  [
    7.700000,
    6.700000,
    5.700000,
    4.700000,
    3.700000,
    2.000000,
    6.500000,
    5.500000,
    4.500000,
    3.500000,
    2.500000,
    0.500000,
    7.700000,
    6.700000,
    5.700000,
    4.700000,
    2.000000,
    3.700000,
    2.500000,
    0.000000,
    2.500000,
    5.000000,
    5.000000,
    3.000000,
    1.500000,
    3.000000,
  ],
  [
    8.900000,
    7.900000,
    6.900000,
    5.900000,
    4.900000,
    3.500000,
    7.700000,
    6.700000,
    5.700000,
    4.700000,
    3.700000,
    2.000000,
    6.500000,
    5.500000,
    4.500000,
    3.500000,
    0.500000,
    2.500000,
    4.000000,
    2.500000,
    0.000000,
    6.500000,
    6.500000,
    4.500000,
    3.000000,
    1.500000,
  ],
  [
    9.000000,
    8.000000,
    7.000000,
    6.000000,
    5.000000,
    3.000000,
    10.200000,
    9.200000,
    8.200000,
    7.200000,
    6.200000,
    4.500000,
    11.400000,
    10.400000,
    9.400000,
    8.400000,
    6.000000,
    7.400000,
    3.200000,
    5.000000,
    6.500000,
    0.000000,
    0.200000,
    4.000000,
    5.500000,
    7.000000,
  ],
  [
    9.000000,
    8.000000,
    7.000000,
    6.000000,
    5.000000,
    3.000000,
    10.200000,
    9.200000,
    8.200000,
    7.200000,
    6.200000,
    4.500000,
    11.400000,
    10.400000,
    9.400000,
    8.400000,
    6.000000,
    7.400000,
    3.200000,
    5.000000,
    6.500000,
    0.200000,
    0.000000,
    4.000000,
    5.500000,
    7.000000,
  ],
  [
    5.000000,
    4.000000,
    3.000000,
    2.000000,
    1.000000,
    1.000000,
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    2.500000,
    7.400000,
    6.400000,
    5.400000,
    4.400000,
    4.000000,
    3.400000,
    1.500000,
    3.000000,
    4.500000,
    4.000000,
    4.000000,
    0.000000,
    3.200000,
    4.400000,
  ],
  [
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    2.500000,
    5.000000,
    4.000000,
    3.000000,
    2.000000,
    1.000000,
    1.000000,
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    2.500000,
    2.200000,
    3.000000,
    1.500000,
    3.000000,
    5.500000,
    5.500000,
    3.200000,
    0.000000,
    3.200000,
  ],
  [
    7.400000,
    6.400000,
    5.400000,
    4.400000,
    3.400000,
    4.000000,
    6.200000,
    5.200000,
    4.200000,
    3.200000,
    2.200000,
    2.500000,
    5.000000,
    4.000000,
    3.000000,
    2.000000,
    1.000000,
    1.000000,
    4.500000,
    3.000000,
    1.500000,
    7.000000,
    7.000000,
    4.400000,
    3.200000,
    0.000000,
  ]
];

const List<List<int>> kLift_parent = [
  [
    -1,
    1,
    2,
    3,
    4,
    24,
    8,
    9,
    3,
    4,
    5,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    -1,
    2,
    3,
    4,
    24,
    8,
    9,
    3,
    9,
    5,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    -1,
    3,
    4,
    24,
    8,
    9,
    3,
    4,
    10,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    -1,
    4,
    24,
    8,
    9,
    3,
    4,
    5,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    -1,
    24,
    8,
    9,
    10,
    4,
    5,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    -1,
    8,
    9,
    10,
    11,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    -1,
    7,
    8,
    9,
    10,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    -1,
    8,
    9,
    10,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    3,
    11,
    24,
    8,
    9,
    -1,
    9,
    10,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    10,
    4,
    24,
    8,
    9,
    10,
    -1,
    10,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    24,
    8,
    9,
    10,
    11,
    -1,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    -1,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    9,
    3,
    4,
    24,
    8,
    9,
    15,
    9,
    10,
    25,
    -1,
    13,
    14,
    15,
    12,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    3,
    4,
    24,
    8,
    9,
    15,
    9,
    10,
    25,
    14,
    -1,
    14,
    15,
    12,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    3,
    4,
    24,
    8,
    9,
    15,
    9,
    10,
    25,
    14,
    15,
    -1,
    15,
    12,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    10,
    4,
    24,
    8,
    9,
    10,
    16,
    10,
    25,
    14,
    15,
    16,
    -1,
    12,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    17,
    14,
    15,
    9,
    10,
    -1,
    26,
    6,
    12,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    24,
    8,
    9,
    10,
    11,
    18,
    25,
    14,
    15,
    16,
    18,
    26,
    -1,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    19,
    8,
    9,
    10,
    11,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    -1,
    12,
    17,
    19,
    19,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    20,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    -1,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    17,
    14,
    15,
    9,
    10,
    21,
    26,
    6,
    12,
    -1,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    22,
    8,
    9,
    10,
    11,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    22,
    12,
    17,
    -1,
    22,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    23,
    8,
    9,
    10,
    11,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    23,
    12,
    17,
    23,
    -1,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    24,
    8,
    9,
    10,
    11,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    -1,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    -1,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    11,
    12,
    8,
    9,
    10,
    11,
    18,
    17,
    14,
    15,
    16,
    18,
    26,
    26,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    -1,
  ]
];

const List<List<int>> kStair_parent = [
  [
    -1,
    1,
    2,
    3,
    4,
    24,
    8,
    9,
    3,
    4,
    5,
    25,
    14,
    15,
    9,
    10,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    -1,
    2,
    3,
    4,
    24,
    8,
    9,
    3,
    4,
    5,
    25,
    14,
    15,
    9,
    10,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    -1,
    3,
    4,
    24,
    8,
    9,
    3,
    9,
    5,
    25,
    14,
    15,
    9,
    15,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    -1,
    4,
    24,
    8,
    9,
    10,
    4,
    10,
    25,
    14,
    15,
    16,
    10,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    -1,
    24,
    8,
    9,
    10,
    11,
    5,
    25,
    14,
    15,
    16,
    18,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    -1,
    8,
    9,
    3,
    4,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    -1,
    7,
    8,
    9,
    10,
    25,
    14,
    15,
    9,
    10,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    -1,
    8,
    9,
    10,
    25,
    14,
    15,
    9,
    10,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    -1,
    9,
    10,
    25,
    14,
    15,
    9,
    15,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    10,
    -1,
    10,
    25,
    14,
    15,
    16,
    10,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    10,
    11,
    24,
    8,
    9,
    10,
    11,
    -1,
    25,
    14,
    15,
    16,
    18,
    26,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    10,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    -1,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    15,
    16,
    18,
    25,
    -1,
    13,
    14,
    15,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    15,
    16,
    18,
    25,
    14,
    -1,
    14,
    15,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    15,
    16,
    18,
    25,
    14,
    15,
    -1,
    15,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    15,
    16,
    18,
    25,
    14,
    15,
    16,
    -1,
    26,
    16,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    12,
    8,
    9,
    10,
    16,
    18,
    17,
    14,
    15,
    16,
    18,
    -1,
    26,
    6,
    12,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    24,
    8,
    9,
    10,
    16,
    18,
    25,
    14,
    15,
    16,
    18,
    26,
    -1,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    19,
    8,
    9,
    3,
    4,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    -1,
    12,
    17,
    19,
    19,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    10,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    20,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    -1,
    17,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    12,
    8,
    9,
    10,
    16,
    18,
    17,
    14,
    15,
    16,
    18,
    21,
    26,
    6,
    12,
    -1,
    6,
    6,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    22,
    8,
    9,
    3,
    4,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    22,
    12,
    17,
    -1,
    22,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    23,
    8,
    9,
    3,
    4,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    23,
    12,
    17,
    23,
    -1,
    6,
    12,
    17,
  ],
  [
    2,
    3,
    4,
    5,
    24,
    24,
    8,
    9,
    3,
    4,
    5,
    6,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    -1,
    11,
    18,
  ],
  [
    2,
    3,
    4,
    10,
    11,
    12,
    8,
    9,
    10,
    11,
    25,
    25,
    14,
    15,
    9,
    10,
    12,
    11,
    6,
    12,
    17,
    6,
    6,
    5,
    -1,
    18,
  ],
  [
    2,
    3,
    9,
    10,
    11,
    12,
    8,
    9,
    10,
    16,
    18,
    17,
    14,
    15,
    16,
    18,
    26,
    26,
    6,
    12,
    17,
    6,
    6,
    5,
    11,
    -1,
  ]
];
