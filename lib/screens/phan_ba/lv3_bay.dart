import 'package:flutter/material.dart';

class Level3Bai7 extends StatefulWidget {
  const Level3Bai7({Key? key}) : super(key: key);

  @override
  State<Level3Bai7> createState() => _Level3Bai7State();
}

class _Level3Bai7State extends State<Level3Bai7> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level3Bai7Page(),
    );
  }
}

class Level3Bai7Page extends StatefulWidget {
  const Level3Bai7Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai7Page> createState() => _Level3Bai7PageState();
}

class _Level3Bai7PageState extends State<Level3Bai7Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  String total2 = "";

  void _Click() {
    List<String> list = _nhapcontroller.text.split("");
    setState(() {
      int maxLength = 0;
      int n = list.length;
      int index  = -1;
      String ans = "";
      for (int i = 0; i < n; i++) {
        for (int j = i; j < n; j++) {
          int isPalindrome = 1;
          // checking if string is palindrome
          for (int k = i; k <= j; k++) {
            if (list[k] != list[j - (k - i)]) {
              isPalindrome = 0;
            }
          }
          if (isPalindrome == 1 && j - i + 1 > maxLength) {
            index = i;
            maxLength = j - i + 1;
          }
        }
      }
      // return the substring from updated index till length maxlength
      for (int i = index; i < index + maxLength; i++) {
        ans += list[i];
      }
      total = list.toString();
      total1 = ans.toString();
      total2 = maxLength.toString();
      print(total);
      print(total1);
      print(total2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TRẢ VỀ ĐỘ DÀI CỦA PALINDROME DÀI NHẤT",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text(
            "NHẬP VÀO CHUỖI KÍ TỰ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text(
            "(Các kí tự cách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 2, 20, 20),
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
            "CHUỖI KÍ TỰ VỪA NHẬP",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total,
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "CHUỖI PALINDMERO DÀI NHẤT",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child:  Text(
            total1,
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM ĐỘ DÀI DÃY",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            total2,
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
