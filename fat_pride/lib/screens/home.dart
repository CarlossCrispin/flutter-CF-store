import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  @override
  _State createState() => _State();

}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'FatPride',
        home: Scaffold(
          appBar: AppBar(
            leading: Icon(Icons.menu),
            backgroundColor: Colors.cyan,
            title:Text('FATPRIDE'),
          ),
          body:
          Column(
            children: <Widget>[
              Text('Clicks : $n'),
              Image.asset('assets/images/fondo.png',width: 300,fit:BoxFit.fill
              ),
              Row(
                children: <Widget>[
                  RaisedButton(
                    child: Text('Incremento'),
                    onPressed: incrementar,
                    color: Colors.lightBlue,
                    splashColor: Colors.indigoAccent,
                  ),
                  RaisedButton(
                    child: Text('Reiniciar'),
                    onPressed: borrar,
                  ),
                ],
              )
            ],
          ),
          backgroundColor: Colors.greenAccent,

        )
    );
  }
  int n = 0;
  incrementar(){
    setState(() => n++);
  }
  borrar(){
    setState(() => n=0);
  }
}




