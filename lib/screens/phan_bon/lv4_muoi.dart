import 'package:flutter/material.dart';

class Level4Bai10 extends StatefulWidget {
  const Level4Bai10({Key? key}) : super(key: key);

  @override
  State<Level4Bai10> createState() => _Level4Bai10State();
}

class _Level4Bai10State extends State<Level4Bai10> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level4Bai10Page(),);
  }
}
class Level4Bai10Page extends StatefulWidget {
  const Level4Bai10Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai10Page> createState() => _Level4Bai10PageState();
}

class _Level4Bai10PageState extends State<Level4Bai10Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total2 ="";
  String total3 ="";
  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      total2 = list.last;
      list.removeLast();
      total = list.toString();
      int k = int.parse(total2);
      print(findLargestOverlap(list, k).toString());
      print(total);
    });
  }
  String findLargestOverlap(List<String> strings, int k) {
    String maxOverlapPair = "";
    int maxOverlapLength = 0;

    for (int i = 0; i < strings.length; i++) {
      for (int j = i + 1; j < strings.length; j++) {
        String s1 = strings[i];
        String s2 = strings[j];

        for (int m = 0; m <= s1.length - k; m++) {
          String substring = s1.substring(m, m + k);
          int index = s2.indexOf(substring);
          while (index != -1) {
            int overlapLength = k;
            int p1 = m + k;
            int p2 = index + k;
            while (p1 < s1.length && p2 < s2.length && s1[p1] == s2[p2]) {
              overlapLength++;
              p1++;
              p2++;
            }
            if (overlapLength > maxOverlapLength) {
              maxOverlapLength = overlapLength;
              maxOverlapPair = "($s1, ${s2.substring(0, index)}"+ "${s1.substring(m, m + overlapLength)}, ${s2.substring(index + overlapLength)})";
            }
            index = s2.indexOf(substring, index + 1);
          }
        }
      }
    }

    return maxOverlapPair;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: const Text(
            "TRẢ VỀ ĐỘ DÀI DÃY CON TĂNG DÀI NHẤT,KHÔNG PHẦN TỬ LK NÀO KHÁC NHAU QUÁ 1  ",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP VÀO CÁC SỐ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Các số cách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: TextField(
            controller: _nhapcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "CÁC SỐ VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            "total".toString(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM ĐỘ DÀI DÃY CON TĂNG",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            "total1" .toString(),
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              "HOÀN THÀNH",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ],
    ));
  }
}

