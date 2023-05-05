import 'package:flutter/material.dart';

class Level4Bai7 extends StatefulWidget {
  const Level4Bai7({Key? key}) : super(key: key);

  @override
  State<Level4Bai7> createState() => _Level4Bai7State();
}

class _Level4Bai7State extends State<Level4Bai7> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level4Bai7Page(),);
  }
}
class Level4Bai7Page extends StatefulWidget {
  const Level4Bai7Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai7Page> createState() => _Level4Bai7PageState();
}

class _Level4Bai7PageState extends State<Level4Bai7Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  String total2 ="";
  String total3 ="";
  String total4 ="";
  void _Click() {
    List<String> list = _nhapcontroller.text.split(",");
    setState(() {
      total = list.toString();
      print(total);
      list.sort((a,b)=>a.split(" ").length.compareTo(b.split(" ").length));
      total1 = list.toString();
      total2 = list.last.toString();
      list.removeLast();
      total3 = list.toString();
      list.insert(0, total2);
      total4 = list.toString();
      print(total1.toString());
      print(total3.toString());
      print(total4.toString());
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
            "SẮP XẾP THEO SỐ LƯỢNG TỪ MỖI CHUỖI VÀ CHUỖI DÀI NHẤT XUẤT HIỆN ĐẦU TIÊN ",
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
            "(Các số cách nhau bởi dấu phẩy)",
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
            "CÁC CHUỖI VỪA NHẬP LÀ",
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
              "SẮP XẾP",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total4.toString(),
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

