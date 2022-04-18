import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class jogo extends StatefulWidget {
  const jogo({Key? key}) : super(key: key);

  @override
  State<jogo> createState() => _jogoState();
}

class _jogoState extends State<jogo> {
  var _imagemApp = AssetImage("images/padrao.png");
  var _mensagem = "Escolha uma opção abaixo";

  void _opcaoSelecionada (String escolhaUsuario){
    var opcoes = ["pedra","papel","tesoura"];
    var numero = Random().nextInt(opcoes.length);
    var escolhaApp = opcoes[numero];
    print("escolha do app" + escolhaApp);
    print("escolha do usuario"+ escolhaUsuario);
    // Exibição de imagem escolhida pelo app
    switch (escolhaApp){
      case"pedra":
        setState(() {
          this._imagemApp=AssetImage("images/pedra.png");
        });
        break;
      case "papel":
        setState(() {
          this._imagemApp= AssetImage("images/papel.png");

        });
        break;
      case "tesoura":
        setState(() {
          this._imagemApp=AssetImage("images/tesoura.png");
        });
        break;
    }
  }
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
          Image(image: this._imagemApp,) ,
          Padding(
            padding: EdgeInsets.only(top: 32,bottom: 10),

            child: Text(
               this._mensagem,
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
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("pedra") ,
                child: Image.asset("images/pedra.png", height: 100,),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("papel"),
                child: Image.asset("images/papel.png",height: 100),
              ),
              GestureDetector(
                onTap: ()=> _opcaoSelecionada("tesoura"),
                child: Image.asset("images/tesoura.png",height: 100),
              ),
            ],
          )
        ],
      )
    );
  }
}
