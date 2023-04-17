import 'package:flutter/material.dart';
import 'package:tts/screens/phan_mot/bonA.dart';
import 'package:tts/screens/phan_mot/hai.dart';
import 'package:tts/screens/phan_mot/nam.dart';

import '../phan_mot/ba.dart';
import '../phan_mot/bon.dart';
import '../phan_mot/mot.dart';

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
            child: const Text('CÁC BÀI TOÁN CODING', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),),
          ),
          const SizedBox(
            height: 40,
          ),
          Container(
            alignment: Alignment.center,
            child: const Text('LEVEL 1', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
          ),
          const SizedBox(height: 30,),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text('Bài 1.1', style: TextStyle(fontSize: 16),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const MotPageA()));
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text('Bài 1.2', style: TextStyle(fontSize: 16),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HaiPageA()));
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text("Bài 1.3", style: TextStyle(fontSize: 16),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BaPage()));
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text("Bài 1.4", style: TextStyle(fontSize: 16),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BonPage()));
              },
            ),
          ),
          Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text("Bài 1.4a", style: TextStyle(fontSize: 16),),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const BonPageB()));
              },
            ),
          ),
          Container(alignment: Alignment.center,
            padding: const EdgeInsets.all(20),
            child: ElevatedButton(
              child: const Text("Bai1.5",style: TextStyle(fontSize: 16),),
              onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => const NamPage()));},
            ),
          ),
        ],
      ),
      );
  }
}
