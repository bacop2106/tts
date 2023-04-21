import 'package:flutter/material.dart';

class Level2Bai3 extends StatefulWidget {
  const Level2Bai3({Key? key}) : super(key: key);

  @override
  State<Level2Bai3> createState() => _Level2Bai3State();
}

class _Level2Bai3State extends State<Level2Bai3> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level2Bai3Page(),
    );
  }
}

class Level2Bai3Page extends StatefulWidget {
  const Level2Bai3Page({Key? key}) : super(key: key);

  @override
  State<Level2Bai3Page> createState() => _Level2Bai3PageState();
}

class _Level2Bai3PageState extends State<Level2Bai3Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String xauchung = "";
  String total1 = "";
  String total2 = "";
  int a =0;
  void _Click(){
    List<String> list = _nhapcontroller.text.split(" ");

    setState((){
      total = list.toString();
      total1= list[0];
      total2 = list[1];
      // for(int i =0;i<total1.length;i++){
      //   for(int j=0;j<total2.length;j++){
      //     while (total1[i+a] && total2[j+a] && total1[i +a] == total2[j+a] ){
      //       a++;
      //     }
      //     if(a > xauchung.length){
      //       xauchung=total1.toString();
      //     }
      //   }
      // }
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
          child: const Text("TRẢ VỀ CHUỖI CON DÀI NHẤT CỦA HAI CHUỖI",style:  TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP DANH SÁCH CÁC CHUỖI",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text("(Các chuỗi cách nhau bởi dấu cách)"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
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
            "DANH SÁCH VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child:  Text(
            total,
            style:  const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM CHUỖI CON",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "0",
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
        )
      ],
    ));
  }
}
