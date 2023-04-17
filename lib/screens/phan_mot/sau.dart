import 'package:flutter/material.dart';

class BonPage extends StatefulWidget {
  const BonPage({Key? key}) : super(key: key);

  @override
  State<BonPage> createState() => _BonPageState();
}

class _BonPageState extends State<BonPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BonPageA(),
    );
  }
}

class BonPageA extends StatefulWidget {
  const BonPageA({Key? key}) : super(key: key);

  @override
  State<BonPageA> createState() => _BonPageAState();
}

class _BonPageAState extends State<BonPageA> {
  final TextEditingController _nhapso1controller = TextEditingController();
  final TextEditingController _nhapso2controller = TextEditingController();
  final TextEditingController _nhapso3controller = TextEditingController();
  final TextEditingController _nhapso4controller = TextEditingController();

  var total4 = " ";
  int total5 = 0;

  void _Click4() {
    var sapxep =
        "${_nhapso1controller.text},${_nhapso2controller.text},${_nhapso3controller.text},${_nhapso4controller.text}";
    var max2 = int.parse(_nhapso1controller.text);
    if (max2 < int.parse(_nhapso2controller.text)) {
      max2 = int.parse(_nhapso2controller.text);
    }
    if (max2 < int.parse(_nhapso3controller.text)) {
      max2 = int.parse(_nhapso3controller.text);
    }
    if (max2 < int.parse(_nhapso4controller.text)) {
      max2 = int.parse(_nhapso4controller.text);
    }
    setState(() {
      total4 = sapxep;
      total5 = max2;
      print(total4);
      print(total5);
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
              'HIỂN THỊ SỐ LỚN NHẤT TRONG LIST',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 30),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: const Text("NHẬP SỐ THỨ 1"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              controller: _nhapso1controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: const Text("NHẬP SỐ THỨ 2"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              controller: _nhapso2controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: const Text("NHẬP SỐ THỨ 3"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              controller: _nhapso3controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: const Text("NHẬP SỐ THỨ 4"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: TextField(
              controller: _nhapso4controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: const Text("HIỂN THỊ DÃY VỪA NHẬP"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: Text(
              total4,
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: _Click4,
              child: const Text('TÌM SỐ LỚN NHẤT'),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(
              total5.toString(),
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
      ),
    );
  }
}
