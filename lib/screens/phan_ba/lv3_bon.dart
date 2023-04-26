import 'package:flutter/material.dart';

class Level3Bai4 extends StatefulWidget {
  const Level3Bai4({Key? key}) : super(key: key);

  @override
  State<Level3Bai4> createState() => _Level3Bai4State();
}

class _Level3Bai4State extends State<Level3Bai4> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Level3Bai4Page(),);
  }
}
class Level3Bai4Page extends StatefulWidget {
  const Level3Bai4Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai4Page> createState() => _Level3Bai4PageState();
}

class _Level3Bai4PageState extends State<Level3Bai4Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  int total1 = 0;
  String total2 = "";

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    List<String> maxOverlapPair = getLargestOverlap(list);
    print(maxOverlapPair);
    setState(() {
      total = list.toString();
      total2 = maxOverlapPair.toString();
      print(total.toString());
      print(total1);
      print(list.toString());
    });
  }
  List<String> getLargestOverlap(List<String> strings) {
    int maxOverlap = 0;
    List<String> maxPair = ["", ""];

    for (int i = 0; i < strings.length; i++) {
      for (int j = i + 1; j < strings.length; j++) {
        String s1 = strings[i];
        String s2 = strings[j];

        int overlap = 0;
        for (int k = 1; k <= s1.length && k <= s2.length; k++) {
          if (s1.substring(s1.length - k) == s2.substring(0, k)) {
            overlap = k;
          }
        }

        if (overlap > maxOverlap) {
          maxOverlap = overlap;
          maxPair[0] = s1;
          maxPair[1] = s2;
        }
      }
    }

    return maxPair;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TRẢ VỀ 2 CHUỖI CHỒNG CHÉO NHIỀU NHẤT",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP DANH SÁCH CÁC CHUỖI",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text("(Các số cách nhau bởi dấu cách )"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
            "DANH SÁCH VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total.toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM CHUỖI",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total2.toString(),
            style: const TextStyle(fontSize: 18),
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
        )
      ],
    ),);
  }
}
