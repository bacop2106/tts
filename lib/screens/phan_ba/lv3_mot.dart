import 'package:flutter/material.dart';

class Level3Bai1 extends StatefulWidget {
  const Level3Bai1({Key? key}) : super(key: key);

  @override
  State<Level3Bai1> createState() => _Level3Bai1State();
}

class _Level3Bai1State extends State<Level3Bai1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level3Bai1Page(),);
  }
}
class Level3Bai1Page extends StatefulWidget {
  const Level3Bai1Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai1Page> createState() => _Level3Bai1PageState();
}

class _Level3Bai1PageState extends State<Level3Bai1Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  int total2 = 0;
  String total3 = "";


  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      list.sort((a,b)=>int.parse(a).compareTo(int.parse(b)));
      print(total);
      print(list);
      total1 = list[1];
      print(total1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TRẢ VỀ SỐ NHỎ THỨ HAI TRONG DANH SÁCH",
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
              "TÌM SỐ NHỎ THỨ 2",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total1.toString(),
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
    ));
  }
}

