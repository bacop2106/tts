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
    setState(() {
      total = list.toString();
      print(list.toString());
      int n = list.length;
      int dem;
      print(n);
      for(int i=0;i<n;i++){
        dem = 0;
        // while ((A[i+1] > A[i])&&(i<n))
        while ((int.parse(list[i+1]) > int.parse(list[i])) && (i<n-1)){
          if (dem == 0) {
           total2=("${list[i]} ${list[i + 1]}");
          } else {
            total2=(list[i + 1]);
          }
          i++;
          dem++;
        }
        print(total2);
      }
    });
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

