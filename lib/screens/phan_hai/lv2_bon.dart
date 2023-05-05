import 'package:flutter/material.dart';

class Level2Bai4 extends StatefulWidget {
  const Level2Bai4({Key? key}) : super(key: key);

  @override
  State<Level2Bai4> createState() => _Level2Bai4State();
}

class _Level2Bai4State extends State<Level2Bai4> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level2Bai4Page(),
    );
  }
}

class Level2Bai4Page extends StatefulWidget {
  const Level2Bai4Page({Key? key}) : super(key: key);

  @override
  State<Level2Bai4Page> createState() => _Level2Bai4PageState();
}

class _Level2Bai4PageState extends State<Level2Bai4Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  int total1 = 0;

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    int n = 0;
    int sum = 0;

    setState(() {
      total = list.toString();
      n = list.length;
      for (int i = 0; i < n; i++) {
        if (int.parse(list[i]) % 15 == 0) {
          sum += int.parse(list[i]);
        }
      }
      total1 = sum;
      print(total);
      print(n);
      print(total1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TỔNG CÁC SỐ CHIA HẾT CHO 3 VÀ 5",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP DANH SÁCH CÁC SỐ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text("(Các số cách nhau bởi dấu cách)"),
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
            total,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÍNH TỔNG",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total1.toString(),
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
        )
      ],
    ));
  }
}
