import 'constants.dart';

class ShortestPath {
  String start, end;
  int s, d;
  bool lift;
  Map graphNodesMap_inv;
  var list_path = List(); //holds the path in terms of the keys of the map

  ShortestPath(this.start, this.end, this.lift) {
    s = kGraphNodesMap[start];
    d = kGraphNodesMap[end];
    graphNodesMap_inv = inverse(kGraphNodesMap);
    if (lift == true)
      givePathByLift(s, d);
    else
      givePathByStairs(s, d);
  }

  void givePathByLift(int s, int d) {
    if (s == d) {
      list_path.add(s);
      // print("${graphNodesMap_inv[s]}");
      return;
    } else {
      givePathByLift(s, kLift_parent[s - 1][d - 1]);
      list_path.add(d);
      // print(" ---> ${graphNodesMap_inv[d]}");
    }
  }

  void givePathByStairs(int s, int d) {
    if (s == d) {
      list_path.add(s);
      // print("${graphNodesMap_inv[s]}");
      return;
    } else {
      givePathByLift(s, kStair_parent[s - 1][d - 1]);
      list_path.add(d);
      //print(" ---> ${graphNodesMap_inv[d]}");
    }
  }

  Map inverse(Map f) {
    //code to inverse
    return f.map((k, v) => MapEntry(v, k));
  }
}
