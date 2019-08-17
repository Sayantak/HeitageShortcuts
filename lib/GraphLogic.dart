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
    return listPath;
  }

  List givePathByStairs(String startPosition, String destinationPosition) {
    generatePathByStairs(
        kGraphNodesMap[startPosition], kGraphNodesMap[destinationPosition]);
    return listPath;
  }

  void generatePathByLift(int s, int d) {
    if (s == d) {
      listPath.add(s);
      // print("${graphNodesMap_inv[s]}");
      return;
    } else {
      if (s != null && d != null) {
        generatePathByLift(s, kLift_parent[s - 1][d - 1]);
        listPath.add(d);
      }
      // print(" ---> ${graphNodesMap_inv[d]}");
    }
  }

  void generatePathByStairs(int s, int d) {
    if (s == d) {
      listPath.add(s);
      // print("${graphNodesMap_inv[s]}");
      return;
    } else {
      generatePathByLift(s, kStair_parent[s - 1][d - 1]);
      listPath.add(d);
      //print(" ---> ${graphNodesMap_inv[d]}");
    }
  }

  Map inverse(Map f) {
    //code to inverse
    return f.map((k, v) => MapEntry(v, k));
  }
}
