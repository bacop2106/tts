import 'package:flutter/material.dart';

class SauPage extends StatefulWidget {
  const SauPage({Key? key}) : super(key: key);

  @override
  State<SauPage> createState() => _SauPageState();
}

class _SauPageState extends State<SauPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SauPageA());
  }
}

class SauPageA extends StatefulWidget {
  const SauPageA({Key? key}) : super(key: key);

  @override
  State<SauPageA> createState() => _SauPageAState();
}

class _SauPageAState extends State<SauPageA> {
  final TextEditingController _nhapdaysocontroller = TextEditingController();
  String total ="";
  String total1 = "";

  void _Click6() {
    List<String> list = _nhapdaysocontroller.text.split("-");
    setState((){
      total=list.toString();
      list.sort();
      total1 = list.toString();
      print("dãy vừa nhập vào là: "+ total);
      print("dãy sau khi sắp xếp là: "+ list.toString());
      print(total1);
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
            "DANH SÁCH CÁC SỐ THEO THỨ TỰ TĂNG DẦN",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          alignment: Alignment.bottomCenter,
          child: const Text("NHẬP DÃY CÁC SỐ",style: TextStyle(fontSize: 18),),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
          alignment: Alignment.center,
          child: const Text(
            "(Các số tách nhau bởi dấu (-))",
            style: TextStyle(fontSize: 14),
          ),
        ),
        Container(padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
          alignment: Alignment.center,
          child: TextField(
            controller: _nhapdaysocontroller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20)
              )
            ),
            keyboardType: TextInputType.number,
          ),
        ),
        const SizedBox(height: 30),
        Container(padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: const Text("HIỂN THỊ DÃY SỐ VỪA NHẬP:",style: TextStyle(fontSize: 18),),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: Text(total.toString(),style: TextStyle(fontSize: 18),),
        ),
        Container(padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: _Click6,
            child: const Text("SẮP XẾP"),
          ),
        ),
        Container(padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
          child: Text(total1.toString(),style: TextStyle(fontSize: 18),),
        ),
        Container(padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: (){Navigator.pop(context);},
            child: const Text("HOÀN THÀNH"),
          ),
        ),
      ],
    ));
  }
}
