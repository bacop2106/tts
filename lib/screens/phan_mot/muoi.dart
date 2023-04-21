import 'package:flutter/material.dart';

class MuoiPage extends StatefulWidget {
  const MuoiPage({Key? key}) : super(key: key);

  @override
  State<MuoiPage> createState() => _MuoiPageState();
}

class _MuoiPageState extends State<MuoiPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MuoiPageA(),
    );
  }
}

class MuoiPageA extends StatefulWidget {
  const MuoiPageA({Key? key}) : super(key: key);

  @override
  State<MuoiPageA> createState() => _MuoiPageAState();
}

class _MuoiPageAState extends State<MuoiPageA> {
  final TextEditingController _nhapcontroller = TextEditingController();
  String total = "";
  String total1 = "";
  int count = 0;

  void _Click(){
    List<String> list = _nhapcontroller.text.split(" ");
    setState((){
      total = list.toString();
      for (int i =0;i<list.length;i++){
        if(list[i].contains('a')){
          count++;
        }

      }


      print(total);
      print(count);

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
            "TRẢ VỀ SỐ CHUỖI CÓ CHỨA KÍ TỰ (a)",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP VÀO CÁC CHUỖI KÍ TỰ ",
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "(Các chuỗi tách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
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
            "CHUỖI VỪA NHẬP LÀ",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child:  Text(
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
              "TÌM CHUỖI",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(
            count.toString(),
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
