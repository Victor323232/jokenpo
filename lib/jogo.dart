import 'package:flutter/material.dart';

class jogo extends StatefulWidget {
  const jogo({Key? key}) : super(key: key);

  @override
  State<jogo> createState() => _jogoState();
}

class _jogoState extends State<jogo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "JokenPo",
        backgroundColor: Colors.blue,
      ),

      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(

          )
        )
      ),




    );
  }
}
