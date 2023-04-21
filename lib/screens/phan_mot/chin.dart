import 'package:flutter/material.dart';

class ChinPage extends StatefulWidget {
  const ChinPage({Key? key}) : super(key: key);

  @override
  State<ChinPage> createState() => _ChinPageState();
}

class _ChinPageState extends State<ChinPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: ChinPageA());
  }
}

class ChinPageA extends StatefulWidget {
  const ChinPageA({Key? key}) : super(key: key);

  @override
  State<ChinPageA> createState() => _ChinPageAState();
}

class _ChinPageAState extends State<ChinPageA> {
  final TextEditingController _nhapchuoicontroller = TextEditingController();
  String total = "";
  int total1 = 0;

  void _Click(){
    List<String> list = _nhapchuoicontroller.text.split(" ");
    setState((){
      total = list.toString();
      total1 = list.length;
      print(total);
      print(total1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 20, 20),
          alignment: Alignment.center,
          child: const Text(
            "TRẢ VỀ SỐ LƯỢNG TỪ TRONG CHUỖI",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            "NHẬP CHUỖI CẦN TÍNH",
            style: TextStyle(fontSize: 20),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text(
            "(Các kí tự tách nhau bởi dấu cách)",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
          alignment: Alignment.center,
          child: TextField(
            controller: _nhapchuoicontroller,
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
              "TÍNH SỐ LƯỢNG TỪ",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
          child: Text(total1.toString(), style: TextStyle(fontSize: 18),),
        ),
        Container(padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(onPressed: (){Navigator.pop(context);},
          child: const Text("HOÀN THÀNH",style: TextStyle(fontSize: 18),),),
        ),
      ],
    ));
  }
}
