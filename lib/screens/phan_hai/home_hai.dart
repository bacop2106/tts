import 'package:flutter/material.dart';
import 'package:tts/screens/phan_hai/lv2_ba.dart';
import 'package:tts/screens/phan_hai/lv2_bon.dart';
import 'package:tts/screens/phan_hai/lv2_hai.dart';
import 'package:tts/screens/phan_hai/lv2_mot.dart';
import 'package:tts/screens/phan_hai/lv2_nam.dart';

class HomeHai extends StatefulWidget {
  const HomeHai({Key? key}) : super(key: key);

  @override
  State<HomeHai> createState() => _HomeHaiState();
}

class _HomeHaiState extends State<HomeHai> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeHaiPage(),
    );
  }
}

class HomeHaiPage extends StatefulWidget {
  const HomeHaiPage({Key? key}) : super(key: key);

  @override
  State<HomeHaiPage> createState() => _HomeHaiPageState();
}

class _HomeHaiPageState extends State<HomeHaiPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level2Bai1()));
            },
            child: const Text(
              "Bài 2.1",
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
                  MaterialPageRoute(builder: (context) => const Level2Bai2()));
            },
            child: const Text(
              "Bài 2.2",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level2Bai3()));
            },
            child: const Text(
              "Bài 2.3",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level2Bai4()));
            },
            child: const Text(
              "Bài 2.4",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level2Bai5()));
            },
            child: const Text(
              "Bài 2.5",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
        Container(alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(onPressed: (){Navigator.pop(context);},
            child: const Text("HOÀN THÀNH"),),)
      ],
    ));
  }
}
