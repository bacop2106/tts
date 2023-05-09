import 'dart:ffi';

import 'package:flutter/material.dart';

class Level3Bai3 extends StatefulWidget {
  const Level3Bai3({Key? key}) : super(key: key);

  @override
  State<Level3Bai3> createState() => _Level3Bai3State();
}

class _Level3Bai3State extends State<Level3Bai3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level3Bai3Page());
  }
}
class Level3Bai3Page extends StatefulWidget {
  const Level3Bai3Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai3Page> createState() => _Level3Bai3PageState();
}

class _Level3Bai3PageState extends State<Level3Bai3Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  int total1 = 0;
  String total2 = "";
  String total3="";

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    List<int> arr = list.map((e) => int.tryParse(e.trim()) ?? 0).toList();
    setState(() {
      total = list.toString();
      print(list.toString());
      int n = list.length;
      print(n);
    });
  }
  var max_ref= 0; // stores the LIS
  int  _lis(arr,n)
  {
    // base case
    if (n == 1) {
      return 1;
    }
    int res;
        int maxEndingHere = 1;
    for (int i = 1; i < n; i++)
    {
      res = _lis(arr, i);
      if (arr[i-1] < arr[n-1] && res + 1 > maxEndingHere) {
        maxEndingHere = res + 1;
      }
    }
    if (max_ref < maxEndingHere) {
      max_ref = maxEndingHere;
    }
    return maxEndingHere;
  }
  int  lis(arr,n)
  {
    max_ref = 1;
    _lis( arr, n);
    return max_ref;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TRẢ VỀ DÃY CON TĂNG DÀI NHẤT",
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
              "TÌM DÃY CON TĂNG DÀI NHẤT",
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
        )
      ],
    ));
  }
}

