import 'dart:math';

import 'package:flutter/material.dart';

class Level4Bai9 extends StatefulWidget {
  const Level4Bai9({Key? key}) : super(key: key);

  @override
  State<Level4Bai9> createState() => _Level4Bai9State();
}

class _Level4Bai9State extends State<Level4Bai9> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Level4Bai9Page(),);
  }
}
class Level4Bai9Page extends StatefulWidget {
  const Level4Bai9Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai9Page> createState() => _Level4Bai9PageState();
}

class _Level4Bai9PageState extends State<Level4Bai9Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  int total1 = 0;
  String total2 ="";
  String total3 ="";
  String total4 ="";
  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    List<int> numbers = list.map((e) => int.tryParse(e.trim()) ?? 0).toList();
    setState(() {
      total = list.toString();
      print(total);
      total1 = longestIncreasingSubsequence(numbers);
      print(total1);
    });
  }
  int longestIncreasingSubsequence(List<int> arr) {
    int n = arr.length;
    List<int> dp = List.filled(n, 1);

    for (int i = 1; i < n; i++) {
      for (int j = 0; j < i; j++) {
        if ((arr[i] - arr[j]).abs() <= 1 && arr[i] != arr[j]) {
          dp[i] = max(dp[i], dp[j] + 1);
        }
      }
    }

    int maxLength = 0;
    for (int i = 0; i < n; i++) {
      if (dp[i] > maxLength) {
        maxLength = dp[i];
      }
    }

    return maxLength;
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.bottomCenter,
        child: const Text(
          "TRẢ VỀ ĐỘ DÀI DÃY CON TĂNG DÀI NHẤT,KHÔNG PHẦN TỬ LK NÀO KHÁC NHAU QUÁ 1  ",
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
          "CÁC SỐ VỪA NHẬP LÀ",
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
            "TÌM ĐỘ DÀI DÃY CON TĂNG",
            style: TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: Text(
          total1 .toString(),
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

