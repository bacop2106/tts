import 'package:flutter/material.dart';

class Level3Bai6 extends StatefulWidget {
  const Level3Bai6({Key? key}) : super(key: key);

  @override
  State<Level3Bai6> createState() => _Level3Bai6State();
}

class _Level3Bai6State extends State<Level3Bai6> {
  @override
  Widget build(BuildContext context) {
    return  const Scaffold(body: Level3Bai6Page(),);
  }
}
class Level3Bai6Page extends StatefulWidget {
  const Level3Bai6Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai6Page> createState() => _Level3Bai6PageState();
}

class _Level3Bai6PageState extends State<Level3Bai6Page> {
  final TextEditingController _nhap1controller = TextEditingController();
  final TextEditingController _nhap2controller = TextEditingController();
  String total = "";
  String total1 = "";
  String total3 = "";
  String total2 = "";
  String median = "";
  int total4 = 0;
  int n = 0;
  void _Click() {
    List<String> list1 = _nhap1controller.text.split(" ");
    List<String> list2 = _nhap2controller.text.split(" ");
    List<String> list3 = list1 + list2;
    setState(() {
      total= list1.toString();
      total1 = list2.toString();
      total2 = list3.toString();
      total3 = list3.toString();
       n = list3.length;
      total4 = ((list3.length)/2).ceil();
      if(list3.length % 2 == 0){
        median = ((int.parse(list3[total4 - 1]) + int.parse(list3[total4]))/2).toString();
      } else{
        median = int.parse(list3[total4 -1]).toString();
      }
      print(total);
      print(total1);
      print(total2);
      print(median);
    });
  }
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TRẢ VỀ TRUNG VỊ CỦA DANH SÁCH KẾT HỢP",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP DANH SÁCH CÁC SỐ CHUỖI 1",
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
            controller: _nhap1controller,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP DANH SÁCH CÁC SỐ CHUỖI 2",
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
            controller: _nhap2controller,
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
            "DANH SÁCH KẾT HỢP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total3.toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM SỐ",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            median.toString(),
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

