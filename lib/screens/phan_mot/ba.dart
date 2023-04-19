import 'package:flutter/material.dart';

class BaPage extends StatefulWidget {
  const BaPage({Key? key}) : super(key: key);

  @override
  State<BaPage> createState() => _BaPageState();
}

class _BaPageState extends State<BaPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: BaPageA());
  }
}

class BaPageA extends StatefulWidget {
  const BaPageA({Key? key}) : super(key: key);

  @override
  State<BaPageA> createState() => _BaPageAState();
}

class _BaPageAState extends State<BaPageA> {
  final TextEditingController _nhapccontroller = TextEditingController();
  int total2 = 0;

  void _Click3(){
    var tich = int.parse(_nhapccontroller.text)* int.parse(_nhapccontroller.text);
    setState((){
      total2= tich;
      print(total2);
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'BÌNH PHƯƠNG CỦA MỘT SỐ',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 5),
            alignment: Alignment.center,
            child: const Text(
              'Nhập một số',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: TextField(
              controller: _nhapccontroller,
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20))),
              keyboardType: TextInputType.number,
            ),
          ),
          const SizedBox(height: 50),
          Container(
            padding: const EdgeInsets.all(20),
            alignment: Alignment.center,
            child: ElevatedButton(
              onPressed: _Click3,
              child: const Text("KẾT QUẢ"),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            alignment: Alignment.center,
            child: const Text(
              'Bình phương của số vừa nhập là:',
              style: TextStyle(fontSize: 16),
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
            child: Text(
              total2.toString(),
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
