import 'constants.dart';

class ShortestPath {
  String start, end;
  int s, d;
  bool lift;
  Map graphNodesMap_inv;

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
      print("${graphNodesMap_inv[s]}");
      return;
    } else {
      givePathByLift(s, kLift_parent[s - 1][d - 1]);
      print(" ---> ${graphNodesMap_inv[d]}");
    }
  }

  void givePathByStairs(int s, int d) {
    if (s == d) {
      print("${graphNodesMap_inv[s]}");
      return;
    } else {
      givePathByLift(s, kStair_parent[s - 1][d - 1]);
      print(" ---> ${graphNodesMap_inv[d]}");
    }
  }

  Map inverse(Map f) {
    //code to inverse
    return f.map((k, v) => MapEntry(v, k));
  }
}
