import 'package:flutter/material.dart';

class Level4Bai6 extends StatefulWidget {
  const Level4Bai6({Key? key}) : super(key: key);

  @override
  State<Level4Bai6> createState() => _Level4Bai6State();
}

class _Level4Bai6State extends State<Level4Bai6> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level4Bai6Page(),);
  }
}
class Level4Bai6Page extends StatefulWidget {
  const Level4Bai6Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai6Page> createState() => _Level4Bai6PageState();
}

class _Level4Bai6PageState extends State<Level4Bai6Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  int total1 = 0;
  String total = "";
  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    total = list.toString();
    List<int> numbers = list.map((e) => int.tryParse(e.trim()) ?? 0).toList();
    setState(() {
      // list.sort((a,b)=>b.compareTo(a));
      total1 = maxTich(numbers);
      print(list);
      print(total1.toString());
    });
  }
  int maxTich(List<int> lst) {
    // Sắp xếp mảng theo thứ tự giảm dần
    lst.sort((a, b) => b.compareTo(a));
    // Tính tích của 3 phần tử lớn nhất và của 2 phần tử nhỏ nhất và phần tử lớn nhất
    int firstMaxTich = lst[0] * lst[1] * lst[2];
    int secondMaxTich = lst[0] * lst[lst.length - 1] * lst[lst.length - 2];

    // So sánh hai giá trị tích đã tính để tìm giá trị lớn nhất
    return firstMaxTich > secondMaxTich ? firstMaxTich : secondMaxTich;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "TRẢ VỀ TÍCH TỐI ĐA CỦA 3 PHẦN TỬ BẤT KỲ TRONG MẢNG",
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
          "NHẬP VÀO CÁC SỐ",
          style: TextStyle(fontSize: 18),
        ),
      ),
      Container(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        alignment: Alignment.center,
        child: const Text(
          "(Các số cách nhau bởi dấu cách)",
          style: TextStyle(fontSize: 14),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: TextField(
          keyboardType: TextInputType.number,
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
          "DÃY VỪA NHẬP LÀ",
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
            "TÌM  TÍCH LỚN NHẤT",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          total1.toString(),
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
