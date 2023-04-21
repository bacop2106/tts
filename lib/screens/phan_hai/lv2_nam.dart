import 'package:flutter/material.dart';

class Level2Bai5 extends StatefulWidget {
  const Level2Bai5({Key? key}) : super(key: key);

  @override
  State<Level2Bai5> createState() => _Level2Bai5State();
}

class _Level2Bai5State extends State<Level2Bai5> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Level2Bai5Page(),);
  }
}
class Level2Bai5Page extends StatefulWidget {
  const Level2Bai5Page({Key? key}) : super(key: key);

  @override
  State<Level2Bai5Page> createState() => _Level2Bai5PageState();
}

class _Level2Bai5PageState extends State<Level2Bai5Page> {
  final TextEditingController _nhapcontroller = TextEditingController();

  void _Click(){

  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(children: <Widget>[Container(
      padding: const EdgeInsets.all(20),
      alignment: Alignment.center,
      child: const Text(
        "TỔNG LỚN NHẤT CỦA BẤT KÝ MẢNG CON LIỀN KỀ NÀO TRONG DANH SÁCH",
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
          "0",
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
          "0",
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
      )],));
  }
}

