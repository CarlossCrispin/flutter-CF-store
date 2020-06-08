import 'package:flutter/material.dart';

class Second extends StatelessWidget{
  Second({@required this.dato}):super();
  String dato = 'Hola !';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("second"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text("Second $dato"),
            RaisedButton(
              onPressed:(){
                Navigator.pop(context);
              },),
          ],
        ),

      ),
    );
  }

}