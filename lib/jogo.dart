import 'package:flutter/cupertino.dart';
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
        title: Text("JokenPo"),
        backgroundColor: Colors.blue,
      ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget> [
          Padding(
            padding: EdgeInsets.only(top: 32,bottom: 10),

            child: Text(
                "Escolha do App",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,

                ),
            ),
          ),
          Image.asset("images/padrao.png"),
          Padding(
            padding: EdgeInsets.only(top: 32,bottom: 10),

            child: Text(
              "Escolha uma opção abaixo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Row(
           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Image.asset("images/pedra.png", height: 100,),
              Image.asset("images/papel.png",height: 100),
              Image.asset("images/tesoura.png",height: 100)
            ],
          )
        ],
      )
    );
  }
}
