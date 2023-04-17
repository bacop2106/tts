import 'package:flutter/material.dart';

class HaiPageA extends StatefulWidget {
  const HaiPageA({Key? key}) : super(key: key);

  @override
  State<HaiPageA> createState() => _HaiPageAState();
}

class _HaiPageAState extends State<HaiPageA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HaiPage());
  }
}

class HaiPage extends StatefulWidget {
  const HaiPage({Key? key}) : super(key: key);

  @override
  State<HaiPage> createState() => _HaiPageState();
}

class _HaiPageState extends State<HaiPage> {
  final TextEditingController _nhapchuoicontroller = TextEditingController();
  int total1 = 0;
  String chuoi = "";

  void _Click2() {
    // var textSpan = _nhapchuoicontroller.text.length;
    List<String> list = _nhapchuoicontroller.text.split('-');
    setState(() {
      chuoi = list.toString();
      total1 = list.length;
      print(total1);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
          child: const Text(
            'TÍNH ĐỘ DÀI CỦA CHUỖI',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: const Text(
            'NHẬP CHUỖI',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: TextFormField(
            controller: _nhapchuoicontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text("HIỂN THỊ DÃY VỪA NHẬP"),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
          alignment: Alignment.bottomCenter,
          child: Text(
            chuoi.toString(),
            style: const TextStyle(fontSize: 18),
          ),
        ),
        const SizedBox(height: 50),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: _Click2,
            child: const Text('KẾT QUẢ'),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: const Text('ĐỘ dài của chuỗi vừa nhập là:', style: TextStyle(fontSize: 20),),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20,0, 20, 20),
          child: Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            child: Text(
              total1.toString(),
              style: const TextStyle(fontSize: 20),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text("HOÀN THÀNH"),
          ),
        )
      ],
    ));
  }
}
