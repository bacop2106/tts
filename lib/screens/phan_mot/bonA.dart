import 'package:flutter/material.dart';

class BonPageB extends StatefulWidget {
  const BonPageB({Key? key}) : super(key: key);

  @override
  State<BonPageB> createState() => _BonPageBState();
}

class _BonPageBState extends State<BonPageB> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BonPageBA(),
    );
  }
}

class BonPageBA extends StatefulWidget {
  const BonPageBA({Key? key}) : super(key: key);

  @override
  State<BonPageBA> createState() => _BonPageBAState();
}

class _BonPageBAState extends State<BonPageBA> {
  final TextEditingController _nhapso1controller = TextEditingController();

  String total4 = "";
  String total5 = "";
  String sln = "";

  void _Click4a() {
    List<String>  list= _nhapso1controller.text.split('-');
    setState(() {
      total4 = list.toString();
      list.sort();
      print(total4);
      sln = list.last;
      print(list);
      print(sln);


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
            child: const Text("NHẬP DÃY SỐ BẤT KỲ"),
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
            child: const Text("HIỂN THỊ DÃY VỪA NHẬP"),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 10, 20, 0),
            alignment: Alignment.bottomCenter,
            child: Text(
              total4.toString(),
              style: const TextStyle(fontSize: 18),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              onPressed: _Click4a,
              child: const Text('TÌM SỐ LỚN NHẤT'),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            child: Text(sln,
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
