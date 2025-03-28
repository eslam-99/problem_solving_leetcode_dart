
main() {
  final res = [
    Solution().checkValidCuts(5, [
      [1, 0, 5, 2],
      [0, 2, 2, 4],
      [3, 2, 5, 3],
      [0, 4, 4, 5],
    ]),
    Solution().checkValidCuts(4, [
      [0, 0, 1, 4],
      [1, 0, 2, 4],
      [2, 0, 3, 4],
      [3, 0, 4, 4],
    ]),
    Solution().checkValidCuts(6, [
      [4, 0, 5, 2],
      [0, 5, 4, 6],
      [4, 5, 6, 6],
    ]),
    Solution().checkValidCuts(1000000000, [
      [759863340, 198369356, 770745997, 501493801],
      [963174221, 0, 971388570, 491659884],
      [0, 779476823, 87871591, 964264565],
      [729505450, 861378702, 747055072, 1000000000],
      [942752045, 491659884, 969518177, 743261001],
      [562098213, 861378702, 576060637, 1000000000],
      [829707989, 0, 877449115, 531632799],
      [83657213, 964264565, 282981105, 1000000000],
      [770745997, 198369356, 794110278, 501493801],
      [933210780, 861378702, 960340480, 1000000000],
      [0, 0, 282981105, 779476823],
      [204266657, 779476823, 217122368, 964264565],
      [87871591, 961395564, 138958644, 964264565],
      [282981105, 861378702, 380586037, 979769825],
      [576060637, 861378702, 711002293, 960617727],
      [794110278, 198369356, 805281599, 501493801],
      [939949007, 491659884, 942752045, 743261001],
      [426461872, 814397105, 561826198, 861378702],
      [781869250, 501493801, 782137578, 836524642],
      [747055072, 861378702, 748309269, 1000000000],
      [787817831, 501493801, 793594601, 836524642],
      [764021748, 501493801, 781869250, 836524642],
      [805281599, 198369356, 829707989, 501493801],
      [848796363, 531632799, 860931465, 861378702],
      [507333449, 861378702, 562098213, 1000000000],
      [733324860, 836524642, 829707989, 837305045],
      [860931465, 531632799, 877449115, 861378702],
      [835146372, 861378702, 885075649, 1000000000],
      [910601053, 743261001, 931865857, 861378702],
      [983590835, 0, 1000000000, 491659884],
      [246246571, 779476823, 282981105, 964264565],
      [711002293, 861378702, 729505450, 1000000000],
      [889993300, 509581369, 910601053, 861378702],
      [138958644, 779476823, 156486035, 964264565],
      [883100451, 509581369, 889993300, 861378702],
      [733324860, 501493801, 764021748, 836524642],
      [929750584, 0, 939949007, 743261001],
      [420003050, 977726165, 507333449, 1000000000],
      [847509445, 531632799, 848796363, 861378702],
      [217122368, 779476823, 246246571, 964264565],
      [177776353, 779476823, 204266657, 964264565],
      [971388570, 0, 983590835, 491659884],
      [960340480, 861378702, 1000000000, 1000000000],
      [748309269, 983237907, 829089590, 1000000000],
      [420003050, 861378702, 507333449, 977726165],
      [829707989, 531632799, 847509445, 861378702],
      [282981105, 0, 426461872, 861378702],
      [704032340, 198369356, 759863340, 501493801],
      [782137578, 501493801, 787817831, 836524642],
      [704032340, 0, 829707989, 198369356],
      [380586037, 861378702, 420003050, 1000000000],
      [810671026, 501493801, 829707989, 836524642],
      [282981105, 979769825, 380586037, 1000000000],
      [793594601, 501493801, 810671026, 836524642],
      [426461872, 0, 704032340, 814397105],
      [704032340, 837305045, 829707989, 861378702],
      [704032340, 501493801, 733324860, 837305045],
      [748309269, 861378702, 829089590, 983237907],
      [931865857, 743261001, 1000000000, 861378702],
      [939949007, 0, 963174221, 491659884],
      [885075649, 861378702, 933210780, 1000000000],
      [0, 964264565, 1157400, 1000000000],
      [877449115, 0, 910601053, 509581369],
      [910601053, 0, 929750584, 743261001],
      [576060637, 960617727, 711002293, 1000000000],
      [87871591, 779476823, 138958644, 961395564],
      [829089590, 861378702, 835146372, 1000000000],
      [877449115, 509581369, 883100451, 861378702],
      [561826198, 814397105, 704032340, 861378702],
      [1157400, 964264565, 83657213, 1000000000],
      [156486035, 779476823, 177776353, 964264565],
      [969518177, 491659884, 1000000000, 743261001],
    ]),
  ];
  print(res);
}

class Solution {
  bool checkValidCuts(int n, List<List<int>> rectangles) {
    return checkAxis(getAxisPoints(rectangles, true)) || checkAxis(getAxisPoints(rectangles, false));
  }

  List<(int, int)> getAxisPoints(List<List<int>> rectangles, bool xAxis) {
    int p1 = xAxis ? 0 : 1;
    int p2 = xAxis ? 2 : 3;
    return rectangles.map<(int, int)>((e) => (e[p1], e[p2])).toList();
  }

  bool checkAxis(List<(int, int)> points) {
    List<(int, int)> sections = [];

    points.sort((a, b) {
      final c =  a.$1.compareTo(b.$1);
      return c == 0 ? a.$2.compareTo(b.$2) : c;
    },);

    int start = points.first.$1;
    int end = points.first.$2;

    for (int i = 1 ; i < points.length ; i++) {
      if (points[i].$1 < end && points[i].$2 > end) {
        end = points[i].$2;
      } else if (points[i].$1 >= end) {
        sections.add((start, end));
        start = points[i].$1;
        end = points[i].$2;
      }
    }
    sections.add((start, end));
    return sections.length >= 3;

    // List<(int, int)> sections = [];
    //
    // for (var p in points) {
    //   int rangeStartIndex = -1;
    //   int rangeEndIndex = -1;
    //   bool doNothing = false;
    //   for (int i = 0 ; i < sections.length ; i++) {
    //     if (p.$1 < sections[i].$1 && p.$2 > sections[i].$2) {
    //       sections.removeAt(i);
    //       i--;
    //     } else if (p.$1 >= sections[i].$1 && p.$1 < sections[i].$2) {
    //       if (p.$2 > sections[i].$2) {
    //         rangeStartIndex = i;
    //       } else {
    //         doNothing = true;
    //       }
    //     } else if (p.$2 > sections[i].$1 && p.$2 <= sections[i].$2) {
    //       if (p.$1 < sections[i].$1) {
    //         rangeEndIndex = i;
    //       } else {
    //         doNothing = true;
    //       }
    //     }
    //   }
    //   if (rangeStartIndex == -1 && rangeEndIndex == -1 && !doNothing) {
    //     sections.add(p);
    //   } else if (rangeStartIndex != -1 && rangeEndIndex == -1) {
    //     sections[rangeStartIndex] = (sections[rangeStartIndex].$1, p.$2);
    //   } else if (rangeStartIndex == -1 && rangeEndIndex != -1) {
    //     sections[rangeEndIndex] = (p.$1, sections[rangeEndIndex].$2);
    //   } else if (rangeStartIndex != -1 && rangeEndIndex != -1) {
    //     sections[rangeStartIndex] = (sections[rangeStartIndex].$1, sections[rangeEndIndex].$2);
    //     sections.removeAt(rangeEndIndex);
    //   }
    // }
    // return sections.length >= 3;

    // // List<int> sections = List.filled(n + 1, -1);
    // Set<int> validPoints = {};
    // Set<int> invalidPoints = {};
    // for (var p in points) {
    //   if (!invalidPoints.contains(p.$1)) validPoints.add(p.$1);
    //   if (!invalidPoints.contains(p.$2)) validPoints.add(p.$2);
    //   for (var i = p.$1 + 1; i < p.$2; i++) {
    //     invalidPoints.add(i);
    //     validPoints.remove(i);
    //   }
    // }
    // validPoints.remove(0);
    // validPoints.remove(n);
    // print(validPoints);
    // print(invalidPoints);
    // if (n - invalidPoints.length < 3) return false;
    // if (validPoints.length + invalidPoints.length + 1 < n) return false;
    // if (validPoints.length >= 2) return true;
    // return false;
  }
}
