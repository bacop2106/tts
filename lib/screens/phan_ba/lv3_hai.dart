import 'package:flutter/material.dart';

class Level3Bai2 extends StatefulWidget {
  const Level3Bai2({Key? key}) : super(key: key);

  @override
  State<Level3Bai2> createState() => _Level3Bai2State();
}

class _Level3Bai2State extends State<Level3Bai2> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: Level3Bai2Page(),);
  }
}
class Level3Bai2Page extends StatefulWidget {
  const Level3Bai2Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai2Page> createState() => _Level3Bai2PageState();
}

class _Level3Bai2PageState extends State<Level3Bai2Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  int total1 = 0;

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      total = list.toString();
      int n = list.toString().length;
      print(total.toString());
      list.sort((a,b)=>int.parse(a).compareTo(int.parse(b)));
      total1 = int.parse(list.last)-int.parse(list[0]);
      print(total1);
      print(list.toString());
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: const Text(
          "TRẢ VỀ SỐ HIỆU LỚN NHẤT GIỮA HAI PHẦN TỬ BẤT KỲ",
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
          keyboardType: TextInputType.number,
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
            "TÌM HIỆU LỚN NHẤT",
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
    ],));
  }
}

