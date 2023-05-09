import 'package:flutter/material.dart';
import 'package:tts/screens/phan_bon/lv4_ba.dart';
import 'package:tts/screens/phan_bon/lv4_bay.dart';
import 'package:tts/screens/phan_bon/lv4_chin.dart';
import 'package:tts/screens/phan_bon/lv4_hai.dart';
import 'package:tts/screens/phan_bon/lv4_mot.dart';
import 'package:tts/screens/phan_bon/lv4_muoi.dart';
import 'package:tts/screens/phan_bon/lv4_sau.dart';

class HomeBon extends StatefulWidget {
  const HomeBon({Key? key}) : super(key: key);

  @override
  State<HomeBon> createState() => _HomeBonState();
}

class _HomeBonState extends State<HomeBon> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBonPage(),);
  }
}
class HomeBonPage extends StatefulWidget {
  const HomeBonPage({Key? key}) : super(key: key);

  @override
  State<HomeBonPage> createState() => _HomeBonPageState();
}

class _HomeBonPageState extends State<HomeBonPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level4Bai1()));
            },
            child: const Text(
              "Bài 4.1",
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
                  MaterialPageRoute(builder: (context) => const Level4Bai2()));
            },
            child: const Text(
              "Bài 4.2",
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
                  MaterialPageRoute(builder: (context) => const Level4Bai3()));
            },
            child: const Text(
              "Bài 4.3",
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
                  MaterialPageRoute(builder: (context) => const Level4Bai6()));
            },
            child: const Text(
              "Bài 4.6",
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
                  MaterialPageRoute(builder: (context) => const Level4Bai7()));
            },
            child: const Text(
              "Bài 4.7",
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
                  MaterialPageRoute(builder: (context) => const Level4Bai9()));
            },
            child: const Text(
              "Bài 4.9",
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
                  MaterialPageRoute(builder: (context) => const Level4Bai10()));
            },
            child: const Text(
              "Bài 4.10",
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
      ],
    ));
  }
}

