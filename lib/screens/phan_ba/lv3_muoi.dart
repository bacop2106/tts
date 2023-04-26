import 'package:flutter/material.dart';

class Level3Bai10 extends StatefulWidget {
  const Level3Bai10({Key? key}) : super(key: key);

  @override
  State<Level3Bai10> createState() => _Level3Bai10State();
}

class _Level3Bai10State extends State<Level3Bai10> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level3Bai10Page(),);
  }
}
class Level3Bai10Page extends StatefulWidget {
  const Level3Bai10Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai10Page> createState() => _Level3Bai10PageState();
}

class _Level3Bai10PageState extends State<Level3Bai10Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  void _Click(){
    List<String> list = _nhapcontroller.text.split(" ");
    setState((){
      total = list.toString();
      list.sort((a,b)=>a.length.compareTo(b.length));
      total1 = list.toString();
      print(total);
      print(total1);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "SẮP XẾP CHUỖI THEO SỐ KÍ TỰ TĂNG DẦN",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text(
            "NHẬP VÀO CHUỖI KÍ TỰ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text(
            "(Các chuỗi cách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 2, 20, 20),
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
            "CHUỖI KÍ TỰ VỪA NHẬP",
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
              "SẮP XẾP CHUỖI",
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

