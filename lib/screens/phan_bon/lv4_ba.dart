import 'package:flutter/material.dart';

class Level4Bai3 extends StatefulWidget {
  const Level4Bai3({Key? key}) : super(key: key);

  @override
  State<Level4Bai3> createState() => _Level4Bai3State();
}

class _Level4Bai3State extends State<Level4Bai3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level4Bai3Page(),);
  }
}
class Level4Bai3Page extends StatefulWidget {
  const Level4Bai3Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai3Page> createState() => _Level4Bai3PageState();
}

class _Level4Bai3PageState extends State<Level4Bai3Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: const Text(
            "TRẢ VỀ DÃY CON CHUNG DÀI NHẤT XUẤT HIỆN TRONG MỌI CHUỖI",
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
            "NHẬP VÀO CÁC CHUỖI",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Các chuỗi cách nhau bởi dấu cách)",
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
            "DÃY VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "total1",
            style:  TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            "total2".toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM  CHUỖI CON",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            "total3".toString(),
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
        ),
      ],
    ));
  }
}

