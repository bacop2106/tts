import 'package:flutter/material.dart';

class Level5Bai1 extends StatefulWidget {
  const Level5Bai1({Key? key}) : super(key: key);

  @override
  State<Level5Bai1> createState() => _Level5Bai1State();
}

class _Level5Bai1State extends State<Level5Bai1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level5Bai1Page(),);
  }
}
class Level5Bai1Page extends StatefulWidget {
  const Level5Bai1Page({Key? key}) : super(key: key);

  @override
  State<Level5Bai1Page> createState() => _Level5Bai1PageState();
}

class _Level5Bai1PageState extends State<Level5Bai1Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total2 = "";

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      int n = list.length;
      total = list.toString();
      String total1 = "";
      for(int i = n-1;i>=0;i--){
        total1 += list[i];
      }
      print(total);
      print(total1.toString());
      total2= total1.toString();
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "ĐẢO NGƯỢC THỨ TỰ PHẦN TỬ TRONG MẢNG",
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
          "(Các phần tử cách nhau bởi dấu cách)",
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
            "MẢNG ĐẢO NGƯỢC LÀ",
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

