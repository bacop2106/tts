import 'package:flutter/material.dart';
import 'package:tts/screens/phan_nam/lv5_ba.dart';
import 'package:tts/screens/phan_nam/lv5_bon.dart';
import 'package:tts/screens/phan_nam/lv5_hai.dart';
import 'package:tts/screens/phan_nam/lv5_mot.dart';
import 'package:tts/screens/phan_nam/lv5_nam.dart';
import 'package:tts/screens/phan_nam/lv5_sau.dart';

class HomeNam extends StatefulWidget {
  const HomeNam({Key? key}) : super(key: key);

  @override
  State<HomeNam> createState() => _HomeNamState();
}

class _HomeNamState extends State<HomeNam> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(body: HomeNamPage(),);
  }
}
class HomeNamPage extends StatefulWidget {
  const HomeNamPage({Key? key}) : super(key: key);

  @override
  State<HomeNamPage> createState() => _HomeNamPageState();
}

class _HomeNamPageState extends State<HomeNamPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(children: <Widget>[
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Level5Bai1()));
          },
          child: const Text(
            "Bài 5.1",
            style:  TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Level5Bai2()));
          },
          child: const Text(
            "Bài 5.2",
            style:  TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Level5Bai3()));
          },
          child: const Text(
            "Bài 5.3",
            style:  TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Level5Bai4()));
          },
          child: const Text(
            "Bài 5.4",
            style:  TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Level5Bai5()));
          },
          child: const Text(
            "Bài 5.5",
            style:  TextStyle(fontSize: 18),
          ),
        ),
      ),
      Container(
        padding: const EdgeInsets.all(20),
        alignment: Alignment.center,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Level5Bai6()));
          },
          child: const Text(
            "Bài 5.6",
            style:  TextStyle(fontSize: 18),
          ),
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
    ],));
  }
}

