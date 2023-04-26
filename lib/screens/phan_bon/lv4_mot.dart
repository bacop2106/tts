import 'package:flutter/material.dart';

class Level4Bai1 extends StatefulWidget {
  const Level4Bai1({Key? key}) : super(key: key);

  @override
  State<Level4Bai1> createState() => _Level4Bai1State();
}

class _Level4Bai1State extends State<Level4Bai1> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level4Bai1Page(),
    );
  }
}

class Level4Bai1Page extends StatefulWidget {
  const Level4Bai1Page({Key? key}) : super(key: key);

  @override
  State<Level4Bai1Page> createState() => _Level4Bai1PageState();
}

class _Level4Bai1PageState extends State<Level4Bai1Page> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  
  void _Click(){
    List<String> stringNumbers = _nhapcontroller.text.split(" ");
    List<int> numbers = stringNumbers.map((e) => int.tryParse(e.trim()) ?? 0).toList();
    setState((){
      total = numbers.toString();
      int numMoves = bubbleSort(numbers);
      total1 = numMoves.toString();
      print(total);
      print(total1);
    });
  }
  int bubbleSort(List<int> inputList) {
    int numSwaps = 0;
    bool swapped;
    do {
      swapped = false;
      for (int i = 1; i < inputList.length; i++) {
        if (inputList[i - 1] > inputList[i]) {
          // swap elements
          int temp = inputList[i - 1];
          inputList[i - 1] = inputList[i];
          inputList[i] = temp;
          numSwaps++;
          swapped = true;
        }
      }
    } while (swapped);
    return numSwaps;
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
            "TRẢ VỀ SỐ LẦN DI CHUYỂN ĐỂ SẮP XẾP NỐI BỌT",
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP VÀO DÃY SỐ NGUYÊN",
            style:  TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Các số cách nhau bởi dấu cách)",
            style:  TextStyle(fontSize: 14),
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
            total,
            style:  TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "TÌM SỐ LẦN DI CHUYỂN",
              style: TextStyle(fontSize: 18),
            ),
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
