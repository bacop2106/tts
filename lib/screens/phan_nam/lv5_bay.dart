import 'package:flutter/material.dart';

class Level5Bai7 extends StatefulWidget {
  const Level5Bai7({Key? key}) : super(key: key);

  @override
  State<Level5Bai7> createState() => _Level5Bai7State();
}

class _Level5Bai7State extends State<Level5Bai7> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Level5Bai7Page(),
    );
  }
}

class Level5Bai7Page extends StatefulWidget {
  const Level5Bai7Page({Key? key}) : super(key: key);

  @override
  State<Level5Bai7Page> createState() => _Level5Bai7PageState();
}

class _Level5Bai7PageState extends State<Level5Bai7Page> {
  final TextEditingController _nhapacontroller = TextEditingController();
  final TextEditingController _nhapbcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  String total2 = "";
  String total3 = "";

  void _Click() {
    List<String> list = _nhapbcontroller.text.split(" ");
    List<String> keys = _nhapacontroller.text.split(" ");

    setState(() {
      total = keys.toString();
      total3 = list.toString();
       // final collections = list.toString();
      final collections = [
        {'a': 1, 'b': 1, 'c': 2, 'd': 4, 'e': 5},
        {'a': 2, 'b': 1, 'c': 5, 'd': 4, 'e': 5},
        {'d': 4, 'e': 5, 'a': 22, 'b': 11, 'c': 51},
      ];
      final result = sortObjectsByKeyOrder(keys, collections);
      total2 = result.toString();
      print(result);
      print(total);
      print(collections);
      total1 = collections.toString();
      print(total2);
    });
  }

  List<Map<String, dynamic>> sortObjectsByKeyOrder(
      List<String> keys, List<Map<String, dynamic>> collections) {
    return collections.map((collection) {
      var newObj = <String, dynamic>{};
      keys.forEach((key) {
        newObj[key] = collection[key];
      });
      return newObj;
    }).toList();
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
            "TRẢ RA MẢNG CÁC OBJECT THEO THỨ TỰ MẢNG CÁC KEY",
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
            "NHẬP VÀO KEYS",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Các KEY cách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: TextField(
            controller: _nhapacontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP VÀO OBJECT",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Các OBJECT cách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: TextField(
            controller: _nhapbcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "MẢNG VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            "Key là: $total\n \n OBJECT là: $total1",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text(
              "OBIECT CHỨA DỮ LIỆU MỚI",
              style: TextStyle(fontSize: 18),
            ),
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
