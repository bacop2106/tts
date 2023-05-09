import 'package:flutter/material.dart';

class Level5Bai5 extends StatefulWidget {
  const Level5Bai5({Key? key}) : super(key: key);

  @override
  State<Level5Bai5> createState() => _Level5Bai5State();
}

class _Level5Bai5State extends State<Level5Bai5> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level5Bai5Page(),);
  }
}

class Level5Bai5Page extends StatefulWidget {
  const Level5Bai5Page({Key? key}) : super(key: key);

  @override
  State<Level5Bai5Page> createState() => _Level5Bai5PageState();
}

class _Level5Bai5PageState extends State<Level5Bai5Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total2 = "";

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      list.removeLast();
      total = list.toString();
      print(total);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "TRẢ VỀ 1 OBJECT CHỨA DỮ LIỆU ĐƯỢC GRUOP THEO CHỈ ĐỊNH",
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
          "NHẬP VÀO COLLECTION",
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        alignment: Alignment.center,
        child: const Text(
          "(Các colection cách nhau bởi dấu cách)",
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
          "MẢNG VỪA NHẬP LÀ",
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          total.toString(),
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: _Click,
          child: const Text(
            "OBIECT CHỨA DỮ LIỆU MỚI",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          "total2".toString(),
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
    ],));
  }
}

