import 'package:flutter/material.dart';

class BayPage extends StatefulWidget {
  const BayPage({Key? key}) : super(key: key);

  @override
  State<BayPage> createState() => _BayPageState();
}

class _BayPageState extends State<BayPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BayPageA());
  }
}

class BayPageA extends StatefulWidget {
  const BayPageA({Key? key}) : super(key: key);

  @override
  State<BayPageA> createState() => _BayPageAState();
}

class _BayPageAState extends State<BayPageA> {
  final TextEditingController _nhapchuoicontroller = TextEditingController();
  String total = "";
  String total1 = "";

  void _Click7() {
    List<String> list = _nhapchuoicontroller.text.split(" ");
    setState(() {
      total = list.toString();
      list.sort();
      total1 = list.toString();
      print("chuỗi vừa nhập vào la:" + total);
      print("dãy sắp xếp là:" + total1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP CÁC CHUỖI CẦN SẮP XẾP",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text(
            "NHẬP CÁC CHUỖI ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text(
            "(Các chuỗi tách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          alignment: Alignment.center,
          child: TextField(
            controller: _nhapchuoicontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "DÃY VỪA NHẬP LÀ:",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total.toString(),
            style: const TextStyle(fontSize: 16),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click7,
            child: const Text(
              'SẮP XẾP',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total1.toString(),
            style: const TextStyle(fontSize: 16),
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
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
      ],
    ));
  }
}
