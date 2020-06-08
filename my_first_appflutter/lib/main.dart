import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  @override
  _State createState() => new _State();


}

class _State extends State<MyApp>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return MaterialApp(
      title: "Fat Pride App",
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Colors.cyan,
            title: Text('FATPRIDE',
            style: TextStyle(color: Colors.cyanAccent,),
            ),
            actions: <Widget>[
              IconButton(
                  icon: Icon(Icons.email),
                  onPressed: null),
              IconButton(
                  icon: Icon(Icons.account_circle),
                  onPressed: null),
            ],
        ),
        body: Container(
          decoration: BoxDecoration(color: Colors.red[200]),
          child:Center(
              child:Column(
                  children:<Widget>[
                    Text('HOLA MUNDO' ),
                    Text('HOLA MUNDO 2'),
                    Text('HOLA MUNDO 3'),
                    Text('HOLA MUNDO 4'),
                    RaisedButton(
                      child: Text("Enviar"),
                      onPressed: ()=> debugPrint("ClickBoton"),
                      color: Colors.cyan,
                      splashColor: Colors.pinkAccent,
                    )
                  ]
              )
          )
        ) ,
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.cyan,
          child: Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [
          BottomNavigationBarItem(icon: Icon(Icons.print), title: Text('Imprimir')),
          BottomNavigationBarItem(icon: Icon(Icons.send), title: Text('Enviar')),
          BottomNavigationBarItem(icon: Icon(Icons.adjust), title: Text('Ajustes')),
        ], onTap: (int i) => debugPrint("Elemeneto: $i"),),
      ),

    );
  }
}





/*class MyApp2 extends StatelessWidget{

}*/

String cambiarTexto(){
  return "Hemos cambiado el texto";
}