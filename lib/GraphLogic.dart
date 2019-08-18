import 'constants.dart';

class ShortestPath {
  Map graphNodesMapInverse;
  List<int> listPath = List(); //holds the path in terms of the keys of the map

  ShortestPath() {
    graphNodesMapInverse = inverse(kGraphNodesMap);
  }

  List givePathByLift(String startPosition, String destinationPosition) {
    generatePathByLift(
        kGraphNodesMap[startPosition], kGraphNodesMap[destinationPosition]);
    for (int i = 0; i < listPath.length - 1; i++) {
      if (((listPath[i] <= 6) || listPath[i] == 24) &&
          ((listPath[i + 1] <= 6) || listPath[i + 1] == 24)) {
        listPath.insert(i + 1, 28); //CME Lifts
        i++;
      }
      if (((listPath[i] > 6 && listPath[i] <= 12) || listPath[i] == 25) &&
          ((listPath[i + 1] > 6 && listPath[i + 1] <= 12) ||
              listPath[i + 1] == 25)) {
        listPath.insert(i + 1, 28); //CB Lifts
        i++;
      }
      if (((listPath[i] > 13 && listPath[i] <= 18) || listPath[i] == 26) &&
          ((listPath[i + 1] > 13 && listPath[i + 1] <= 18) ||
              listPath[i + 1] == 26)) {
        listPath.insert(i + 1, 28); //ICT Lifts
        i++;
      }
      if ((listPath[i] == 13 && listPath[i + 1] == 14) ||
          (listPath[i] == 14 && listPath[i + 1] == 13)) {
        listPath.insert(i + 1, 27); //ICT Stair for 5th - 6th Floor
        i++;
      }
    }
    addConnectorsAndRoads();
    return listPath;
  }

  List givePathByStairs(String startPosition, String destinationPosition) {
    generatePathByStairs(
        kGraphNodesMap[startPosition], kGraphNodesMap[destinationPosition]);
    for (int i = 0; i < listPath.length - 1; i++) {
      if (((listPath[i] <= 6) || listPath[i] == 24) &&
          ((listPath[i + 1] <= 6) || listPath[i + 1] == 24)) {
        listPath.insert(i + 1, 27); //CME Stairs
        i++;
      }
      if (((listPath[i] > 6 && listPath[i] <= 12) || listPath[i] == 25) &&
          ((listPath[i + 1] > 6 && listPath[i + 1] <= 12) ||
              listPath[i + 1] == 25)) {
        listPath.insert(i + 1, 27); //CB Stairs
        i++;
      }
      if (((listPath[i] > 12 && listPath[i] <= 18) || listPath[i] == 26) &&
          ((listPath[i + 1] > 12 && listPath[i + 1] <= 18) ||
              listPath[i + 1] == 26)) {
        listPath.insert(i + 1, 27); //ICT Stairs
        i++;
      }
    }
    addConnectorsAndRoads();
    return listPath;
  }

  void addConnectorsAndRoads() {
    for (int i = 0; i < listPath.length - 1; i++) {
      if ((listPath[i] == 5 && listPath[i + 1] == 11) ||
          (listPath[i] == 11 && listPath[i + 1] == 5) ||
          (listPath[i] == 11 && listPath[i + 1] == 18) ||
          (listPath[i] == 18 && listPath[i + 1] == 11)) {
        listPath.insert(i + 1, 29); //2nd Floor Connectors
        i++;
      }
      if ((listPath[i] == 4 && listPath[i + 1] == 10) ||
          (listPath[i] == 10 && listPath[i + 1] == 4) ||
          (listPath[i] == 10 && listPath[i + 1] == 16) ||
          (listPath[i] == 16 && listPath[i + 1] == 10)) {
        listPath.insert(i + 1, 29); //3rd Floor Connectors
        i++;
      }
      if ((listPath[i] == 3 && listPath[i + 1] == 9) ||
          (listPath[i] == 9 && listPath[i + 1] == 3) ||
          (listPath[i] == 9 && listPath[i + 1] == 15) ||
          (listPath[i] == 15 && listPath[i + 1] == 9)) {
        listPath.insert(i + 1, 29); // 4th Floor Connectors
        i++;
      }
      if ((listPath[i] == 22 && listPath[i + 1] == 23) || //Canteen - Gate 5
          (listPath[i] == 23 && listPath[i + 1] == 22) ||
          (listPath[i] == 23 && listPath[i + 1] == 6) || //Canteen - CME Ground
          (listPath[i] == 6 && listPath[i + 1] == 23) ||
          (listPath[i] == 6 &&
              listPath[i + 1] == 12) || //CME Ground - CB Ground
          (listPath[i] == 12 && listPath[i + 1] == 6) ||
          (listPath[i] == 12 &&
              listPath[i + 1] == 17) || //CB Ground - ICT Ground
          (listPath[i] == 17 && listPath[i + 1] == 12) ||
          (listPath[i] == 6 &&
              listPath[i + 1] == 19) || //CME Ground - CME Basement
          (listPath[i] == 19 && listPath[i + 1] == 6) ||
          (listPath[i] == 12 && listPath[i + 1] == 20) || //CB Ground - Library
          (listPath[i] == 20 && listPath[i + 1] == 12) ||
          (listPath[i] == 17 &&
              listPath[i + 1] == 21) || //ICT Ground - ICT Basement
          (listPath[i] == 21 && listPath[i + 1] == 17)) {
        listPath.insert(i + 1, 30);
        i++;
      }
    }
  }

  void generatePathByLift(int s, int d) {
    if (s == d) {
      listPath.add(s);
      return;
    } else {
      if (s != null && d != null) {
        generatePathByLift(s, kLift_parent[s - 1][d - 1]);
        listPath.add(d);
      }
    }
  }

  void generatePathByStairs(int s, int d) {
    if (s == d) {
      listPath.add(s);
      return;
    } else {
      generatePathByLift(s, kStair_parent[s - 1][d - 1]);
      listPath.add(d);
    }
  }

  Map inverse(Map f) {
    //code to inverse
    return f.map((k, v) => MapEntry(v, k));
  }
}
