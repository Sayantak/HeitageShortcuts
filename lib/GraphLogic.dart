import 'constants.dart';

class ShortestPath {
  String start, end;
  int s, d;
  bool lift;
  Map kGraphNodesMap_inv;

  ShortestPath(this.start, this.end, this.lift) {
    s = kGraphNodesMap[start];
    d = kGraphNodesMap[end];
    kGraphNodesMap_inv = inverse(kGraphNodesMap); //inverse the map
    give_path_lift(s, d);
  }

  void give_path_lift(int s, int d) {
    if (s == d) {
      print("${kGraphNodesMap_inv[s]}");
      return;
    } else {
      give_path_lift(s, kLift_parent[s - 1][d - 1]);
      print(" ---> ${kGraphNodesMap_inv[d]}");
    }
  }

  Map inverse(Map f) {
    //code to inverse
    return f.map((k, v) => MapEntry(v, k));
  }
}
