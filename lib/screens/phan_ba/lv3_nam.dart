import 'package:flutter/material.dart';

class Level3Bai5 extends StatefulWidget {
  const Level3Bai5({Key? key}) : super(key: key);

  @override
  State<Level3Bai5> createState() => _Level3Bai5State();
}

class _Level3Bai5State extends State<Level3Bai5> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Level3Bai5Page(),);
  }
}
class Level3Bai5Page extends StatefulWidget {
  const Level3Bai5Page({Key? key}) : super(key: key);

  @override
  State<Level3Bai5Page> createState() => _Level3Bai5PageState();
}

class _Level3Bai5PageState extends State<Level3Bai5Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  int total1 = 0;

  void _Click() {
    List<String> list = _nhapcontroller.text.split(" ");
    setState(() {
      total = list.toString();
      int n = list.length;
      int res = 1;
      list.sort((a,b)=>int.parse(a).compareTo(int.parse(b)));
      for(int i=0;i<n;i++){
        if(int.parse(list[i])> res){
          res;
        }
        else{
          res += int.parse(list[i]);
        }
      }
      print(res);
      total1= res;
      print(total);
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
            "TRẢ VỀ SỐ NGUYÊN DƯƠNG KHÔNG THỂ BIỂU DIỄN",
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
              "TÌM SỐ",
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
      ],
    ),);
  }
}

