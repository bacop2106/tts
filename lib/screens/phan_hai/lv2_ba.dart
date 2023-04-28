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

  String total1 = "";
  String total2 = "";

  void _Click(){
    List<String> list = _nhapcontroller.text.split(" ");

    setState((){
      total = list.toString();
      String str1= list[0].toString();
      String str2 = list[1].toString();
      // for(int i =0;i<n;i++){
      //   for(int j=0;j<m;j++){
      //     int a =0;
      //     String xauchung = "";
      //     while (str1[i+a] && str2[j] && str1[i +a] == str2[j+a] ){
      //       a++;
      //     }
      //     if(a > xauchung.length){
      //       xauchung=total1.substring(i,i+a);
      //     }
      //   }
      // }
      String commonSubstring = longestCommonSubstring(str1, str2);
      total1 = commonSubstring;
      print(total);
      print(str1);
      print(str2);
      print(total1);
    });
  }
  String longestCommonSubstring(String str1, String str2) {
    int maxLength = 0;
    int endIndex = 0;
    List<List<int>> matrix = List.generate(str1.length + 1, (i) => List.filled(str2.length + 1, 0));

    for (int i = 1; i <= str1.length; i++) {
      for (int j = 1; j <= str2.length; j++) {
        if (str1[i - 1] == str2[j - 1]) {
          matrix[i][j] = matrix[i - 1][j - 1] + 1;
          if (matrix[i][j] > maxLength) {
            maxLength = matrix[i][j];
            endIndex = i - 1;
          }
        } else {
          matrix[i][j] = 0;
        }
      }
    }

    if (maxLength == 0) {
      return "";
    } else {
      return str1.substring(endIndex - maxLength + 1, endIndex + 1);
    }
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
          child: Text(
            total1,
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
