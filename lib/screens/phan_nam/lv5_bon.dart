import 'package:flutter/material.dart';

class Level5Bai4 extends StatefulWidget {
  const Level5Bai4({Key? key}) : super(key: key);

  @override
  State<Level5Bai4> createState() => _Level5Bai4State();
}

class _Level5Bai4State extends State<Level5Bai4> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level5Bai4Page(),);
  }
}
class Level5Bai4Page extends StatefulWidget {
  const Level5Bai4Page({Key? key}) : super(key: key);

  @override
  State<Level5Bai4Page> createState() => _Level5Bai4PageState();
}

class _Level5Bai4PageState extends State<Level5Bai4Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total2 = "";
  int n = 0;

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      total = list.toString();
      print(total);
      n= list.length;
      total2 = removeDuplicates(list).toString();
      print(total2);
      print(n);
    });
  }
  List removeDuplicates(List arr) {
    for (int i = 0; i < arr.length; i++) {
      for (int j = i + 1; j < arr.length; j++) {
        if (arr[i] == arr[j]) {
          arr.removeAt(j);
          j--;
        }
      }
    }

    return arr;
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "LOẠI BỎ COLLECTION BỊ LẶP",
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
          "NHẬP VÀO MẢNG",
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
            "LOẠI BỎ COLLECTION LẶP",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          total2.toString(),
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

