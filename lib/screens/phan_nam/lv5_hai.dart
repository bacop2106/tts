import 'package:flutter/material.dart';

class Level5Bai2 extends StatefulWidget {
  const Level5Bai2({Key? key}) : super(key: key);

  @override
  State<Level5Bai2> createState() => _Level5Bai2State();
}

class _Level5Bai2State extends State<Level5Bai2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level5Bai2Page(),);
  }
}
class Level5Bai2Page extends StatefulWidget {
  const Level5Bai2Page({Key? key}) : super(key: key);

  @override
  State<Level5Bai2Page> createState() => _Level5Bai2PageState();
}

class _Level5Bai2PageState extends State<Level5Bai2Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total2 = "";
  int scd = 0;

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      scd = int.parse(list.last);
      list.removeLast();
      total = list.toString();
      int n = list.length;
      print(total);
      print(n);
      print(scd);
      List<List<dynamic>> dividedArr = divideArray(list, scd);
      // In ra kết quả
      for (var subArr in dividedArr) {
        total2= dividedArr.toString();
      }
      print(total2);
    });
  }
  List<List<dynamic>> divideArray(List<dynamic> arr, int parts) {
    int n = arr.length;
    int partSize = (n / parts).ceil();
    List<List<dynamic>> dividedArr = [];

    for (int i = 0; i < n; i += partSize) {
      dividedArr.add(arr.sublist(i, i + partSize > n ? n : i + partSize));
    }

    return dividedArr;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "CHIA ĐỀU MẢNG THEO SỐ CHỈ ĐỊNH",
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
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        alignment: Alignment.center,
        child: const Text(
          "(Số cuối cùng là số phần)",
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
            "CHIA ĐỀU MẢNG",
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

