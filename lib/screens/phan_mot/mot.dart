import 'package:flutter/material.dart';

class MotPageA extends StatefulWidget {
  const MotPageA({Key? key}) : super(key: key);

  @override
  State<MotPageA> createState() => _MotPageAState();
}

class _MotPageAState extends State<MotPageA> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: MotPage());
  }
}

class MotPage extends StatefulWidget {
  const MotPage({Key? key}) : super(key: key);

  @override
  State<MotPage> createState() => _MotPageState();
}

class _MotPageState extends State<MotPage> {
  final TextEditingController _nhapacontroller = TextEditingController();
  final TextEditingController _nhapbcontroller = TextEditingController();
  final TextEditingController _kqcontroller = TextEditingController();
  int total = 0;

  void _Click() {
    var tong = int.parse(_nhapacontroller.text) + int.parse(_nhapbcontroller.text);
    setState((){
      total = tong;
      print(tong);
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
            'TÍNH TỔNG 2 SỐ',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: const Text(
            'NHẬP a',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: TextField(
            controller: _nhapacontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: const Text(
            'NHẬP b',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: TextField(
            controller: _nhapbcontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(height: 50),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: _Click,
            child: const Text('KẾT QUẢ'),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 10),
          child: const Text('Tổng của hai số vừa nhập là:', style: TextStyle(fontSize: 20),),
        ),
        Container(
          alignment: Alignment.bottomCenter,
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child:  Text(
            total.toString(),
            style: const TextStyle(fontSize: 20),
          ),
        ), Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.bottomCenter,
          child: ElevatedButton(onPressed: (){Navigator.pop(context);},
          child: const Text("HOÀN THÀNH"),),
        )
      ],
    ));
  }
}
