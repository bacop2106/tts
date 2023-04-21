import 'package:flutter/material.dart';

class Level2Bai2 extends StatefulWidget {
  const Level2Bai2({Key? key}) : super(key: key);

  @override
  State<Level2Bai2> createState() => _Level2Bai2State();
}

class _Level2Bai2State extends State<Level2Bai2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level2Bai2Page(),
    );
  }
}

class Level2Bai2Page extends StatefulWidget {
  const Level2Bai2Page({Key? key}) : super(key: key);

  @override
  State<Level2Bai2Page> createState() => _Level2Bai2PageState();
}

class _Level2Bai2PageState extends State<Level2Bai2Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  void _Click(){
    List<String> list = _nhapcontroller.text.split(" ");

    setState((){
      total = list.toString();
      print(total);
      list.sort((a,b)=>a.length.compareTo(b.length));
      print(list);
      total1 = list.last;
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
            "TRẢ VỀ TỪ DÀI NHẤT TRONG DANH SÁCH",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP DANH SÁCH CÁC TỪ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text("(Các từ cách nhau bởi dấu cách)"),
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
          child:  Text(
            total,
            style:  TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM TỪ DÀI NHẤT",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total1,
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
