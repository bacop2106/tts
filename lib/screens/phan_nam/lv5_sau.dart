import 'package:flutter/material.dart';

class Level5Bai6 extends StatefulWidget {
  const Level5Bai6({Key? key}) : super(key: key);

  @override
  State<Level5Bai6> createState() => _Level5Bai6State();
}

class _Level5Bai6State extends State<Level5Bai6> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level5Bai6Page(),);
  }
}
class Level5Bai6Page extends StatefulWidget {
  const Level5Bai6Page({Key? key}) : super(key: key);

  @override
  State<Level5Bai6Page> createState() => _Level5Bai6PageState();
}

class _Level5Bai6PageState extends State<Level5Bai6Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total2 = "";
  String total3 = "";

  void _Click() {
    List<String> list = _nhapcontroller.text.split(",");
    setState(() {
      total = list.toString();
      total2 = total.trim().replaceAll(RegExp(' +'),' ');
      print(total);
      print(total2);
      print(total3);
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "LOẠI BỎ KHOẢNG TẮNG ĐẦU VÀ CUỐI, NẾU CÓ KHOẢNG TRẮNG Ở GIỮA THÌ CHỈ GIỮ LẠI 1 KHOẢNG TRẮNG",
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
          "NHẬP VÀO CHUỖI",
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        alignment: Alignment.center,
        child: const Text(
          "(Các chuỗi cách nhau bởi dấu phẩy)",
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
          "CHUỖI VỪA NHẬP LÀ",
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
            "LOẠI BỎ KHOẢNG TRẮNG",
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
      ),
    ],));
  }
}

