import 'package:flutter/material.dart';

class NamPage extends StatefulWidget {
  const NamPage({Key? key}) : super(key: key);

  @override
  State<NamPage> createState() => _NamPageState();
}

class _NamPageState extends State<NamPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: NamPageA());
  }
}

class NamPageA extends StatefulWidget {
  const NamPageA({Key? key}) : super(key: key);

  @override
  State<NamPageA> createState() => _NamPageAState();
}

class _NamPageAState extends State<NamPageA> {
  final TextEditingController _nhapcacchuoicontroller = TextEditingController();

  String total1 = "";
  String total5 = "";
  String total = "";
  int sln = 0;
  int a = 0;
  int b = 0;

  void _Click5() {
    List<String> list = _nhapcacchuoicontroller.text.split(" ");
    // for (var i = 0; i < list.length; i++) Text(list[i]);
    // for(var i in list) {
    // }

    setState(() {
      total1 = list.toString();
      print("dãy số nhập vào là: " + list.toString());
      print(total.toString());
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
            'HIỂN THỊ CHUỖI NGẮN NHẤT TRONG DANH SÁCH',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(height: 30),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text("NHẬP CÁC CHUỖI BẤT KỲ"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: TextField(
            controller: _nhapcacchuoicontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text("HIỂN THỊ CÁC CHUỖI VỪA NHẬP"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.bottomCenter,
          child: Text(
            total1.toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: _Click5,
            child: const Text('TÌM DÃY NGẮN NHẤT'),
          ),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Text(
            sln.toString(),
            // total4.toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('HOÀN THÀNH'),
            )),
      ],
    ));
  }
}
