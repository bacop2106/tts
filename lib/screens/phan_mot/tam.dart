import 'package:flutter/material.dart';

class TamPage extends StatefulWidget {
  const TamPage({Key? key}) : super(key: key);

  @override
  State<TamPage> createState() => _TamPageState();
}

class _TamPageState extends State<TamPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: TamPageA(),
    );
  }
}

class TamPageA extends StatefulWidget {
  const TamPageA({Key? key}) : super(key: key);

  @override
  State<TamPageA> createState() => _TamPageAState();
}

class _TamPageAState extends State<TamPageA> {
  final TextEditingController _chuoisocontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            "TÌM TRUNG VỊ CỦA DÃY SỐ",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.center,
          child: const Text(
            'NHẬP DÃY SỐ',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
          alignment: Alignment.center,
          child: const Text('(Các số cách nhau bởi dấu cách)'),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: TextField(
            controller: _chuoisocontroller,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20))),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            'DÃY VỪA NHẬP LÀ',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text(
            '0',
            style: TextStyle(fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: (){},
            child: Text('TÍNH TRUNG VỊ',style: TextStyle(fontSize: 18),),
          ),
        )
      ],
    );
  }
}
