import 'package:flutter/material.dart';
import 'package:tts/screens/phan_mot/ba.dart';
import 'package:tts/screens/phan_mot/bay.dart';
import 'package:tts/screens/phan_mot/bon.dart';
import 'package:tts/screens/phan_mot/bonA.dart';
import 'package:tts/screens/phan_mot/chin.dart';
import 'package:tts/screens/phan_mot/hai.dart';
import 'package:tts/screens/phan_mot/mot.dart';
import 'package:tts/screens/phan_mot/muoi.dart';
import 'package:tts/screens/phan_mot/nam.dart';
import 'package:tts/screens/phan_mot/sau.dart';
import 'package:tts/screens/phan_mot/tam.dart';

class HomeMot extends StatefulWidget {
  const HomeMot({Key? key}) : super(key: key);

  @override
  State<HomeMot> createState() => _HomeMotState();
}

class _HomeMotState extends State<HomeMot> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomeMotPage(),
    );
  }
}

class HomeMotPage extends StatefulWidget {
  const HomeMotPage({Key? key}) : super(key: key);

  @override
  State<HomeMotPage> createState() => _HomeMotPageState();
}

class _HomeMotPageState extends State<HomeMotPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(
            child: const Text(
              'Bài 1.1',
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MotPageA()));
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            child: const Text(
              'Bài 1.2',
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HaiPageA()));
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            child: const Text(
              "Bài 1.3",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BaPage()));
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            child: const Text(
              "Bài 1.4",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BonPage()));
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            child: const Text(
              "Bài 1.4a",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BonPageB()));
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            child: const Text(
              "Bài 1.5",
              style: TextStyle(fontSize: 16),
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const NamPage()));
            },
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const SauPage()));
            },
            child: const Text(
              "Bài 1.6",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const BayPage()));
            },
            child: const Text(
              "BÀI 1.7",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const TamPage()));
            },
            child: const Text(
              "Bài 1.8",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const ChinPage()));
            },
            child: const Text(
              "BÀI 1.9",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(20),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const MuoiPage()));
            },
            child: const Text(
              "BÀI 1.10",
              style: TextStyle(fontSize: 16),
            ),
          ),
        ),
        Container(alignment: Alignment.center,
        padding: EdgeInsets.all(20),
        child: ElevatedButton(onPressed: (){Navigator.pop(context);},
        child: Text("HOÀN THÀNH"),),)
      ],
    ));
  }
}
