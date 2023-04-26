import 'package:flutter/material.dart';
import 'package:tts/screens/phan_ba/lv3_ba.dart';
import 'package:tts/screens/phan_ba/lv3_bay.dart';
import 'package:tts/screens/phan_ba/lv3_bon.dart';
import 'package:tts/screens/phan_ba/lv3_hai.dart';
import 'package:tts/screens/phan_ba/lv3_mot.dart';
import 'package:tts/screens/phan_ba/lv3_muoi.dart';
import 'package:tts/screens/phan_ba/lv3_nam.dart';
import 'package:tts/screens/phan_ba/lv3_sau.dart';


class HomeBa extends StatefulWidget {
  const HomeBa({Key? key}) : super(key: key);

  @override
  State<HomeBa> createState() => _HomeBaState();
}

class _HomeBaState extends State<HomeBa> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: HomeBaPage(),);
  }
}
class HomeBaPage extends StatefulWidget {
  const HomeBaPage({Key? key}) : super(key: key);

  @override
  State<HomeBaPage> createState() => _HomeBaPageState();
}

class _HomeBaPageState extends State<HomeBaPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Level3Bai1()));
            },
            child: const Text(
              "Bài 3.1",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai2()));
            },
            child: const Text(
              "Bài 3.2",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai3()));
            },
            child: const Text(
              "Bài 3.3",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai4()));
            },
            child: const Text(
              "Bài 3.4",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai5()));
            },
            child: const Text(
              "Bài 3.5",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai6()));
            },
            child: const Text(
              "Bài 3.6",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai7()));
            },
            child: const Text(
              "Bài 3.7",
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
                  MaterialPageRoute(builder: (context) => const Level3Bai10()));
            },
            child: const Text(
              "Bài 3.10",
              style:  TextStyle(fontSize: 18),
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

