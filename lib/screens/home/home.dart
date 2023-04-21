import 'package:flutter/material.dart';
import 'package:tts/screens/phan_hai/home_hai.dart';
import 'package:tts/screens/phan_mot/bonA.dart';
import 'package:tts/screens/phan_mot/chin.dart';
import 'package:tts/screens/phan_mot/hai.dart';
import 'package:tts/screens/phan_mot/home_mot.dart';
import 'package:tts/screens/phan_mot/muoi.dart';
import 'package:tts/screens/phan_mot/nam.dart';

import '../phan_mot/ba.dart';
import '../phan_mot/bay.dart';
import '../phan_mot/bon.dart';
import '../phan_mot/mot.dart';
import '../phan_mot/sau.dart';
import '../phan_mot/tam.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomePage(),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.black12,
      //   elevation: 0,
      //   title: Text('Các bài toán Coding',
      //       style: TextStyle(color: Colors.redAccent)),
      // ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: const Text(
              'CÁC BÀI TOÁN CODING',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const HomeMot()));},
              child: Text('LEVEL 1',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(padding: EdgeInsets.all(20),
          alignment: Alignment.center,
          child: ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>HomeHai()));},
          child: Text("LEVEL 2",style: TextStyle(fontSize: 20),),),)
        ],
      ),
    );
  }
}
