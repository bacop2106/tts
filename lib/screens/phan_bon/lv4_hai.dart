import 'package:flutter/material.dart';

class Level4Bai2 extends StatefulWidget {
  const Level4Bai2({Key? key}) : super(key: key);

  @override
  State<Level4Bai2> createState() => _Level4Bai2State();
}

class _Level4Bai2State extends State<Level4Bai2> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level4Bai2Page(),
    );
  }
}

class Level4Bai2Page extends StatefulWidget {
  const Level4Bai2Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai2Page> createState() => _Level4Bai2PageState();
}

class _Level4Bai2PageState extends State<Level4Bai2Page> {
  final TextEditingController _nhapcontroller = TextEditingController();

  String total = "";
  String total1 = "";
  String total2 = "";
  String total3 = "";

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    total2 = list.last;
    list.removeLast();
    List<int> numbers = list.map((e) => int.tryParse(e.trim()) ?? 0).toList();
    setState(() {
      int n = 0;
      total1 = list.toString();
      n = list.length;
      int dem = countSubsequences(numbers, int.parse(total2.toString()));
      // int dem = 0;
      // for (int i = 0; i < n; i++) {
      //   int sum = 0;
      //   for (int j = i; j < n; j++) {
      //     sum += int.parse(list[j]);
      //     if (sum == int.parse(list.last))
      //      { dem++;}
      //   }
      // }
      total3 = dem.toString();
      print("chuỗi vừa nhập là: $total1");
      print("giá trị đích là: $total2");
      print("độ dài chuỗi là: $n");
      print(dem);
    });
  }

  int countSubsequences(List<int> arr, int k) {
    List<int> dp = List.filled(k + 1, 0);
    dp[0] = 1;

    for (int i = 0; i < arr.length; i++) {
      for (int j = k; j >= arr[i]; j--) {
        dp[j] += dp[j - arr[i]];
      }
    }

    return dp[k];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: const Text(
            "TRẢ VỀ SỐ LƯỢNG ACCS DÃY CON RIÊNG BIỆT CỦA DANH SÁCH CÓ TỔNG BẰNG 1 GIÁ TRỊ MỤC TIÊU",
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
            "NHẬP VÀO DÃY SỐ NGUYÊN",
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
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Số cuối cùng là giá trị đích)",
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
            "DÃY VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total1,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "GIÁ TRỊ ĐÍCH ",
            style: TextStyle(fontSize: 18),
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
            onPressed: _Click,
            child: const Text(
              "TÌM SỐ CHUỖI CON",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total3.toString(),
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
      ],
    ));
  }
}
