import 'package:flutter/material.dart';
import 'package:tts/screens/phan_bon/lv4_mot.dart';

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
      ],
    ));
  }
}

