import 'package:flutter/material.dart';
import './second.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      home:First(),
    );
  }
}

class First extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.cyan,
       title: Text("Ventanas"),
     ),
     body: Container(
       child: Column(
         children: <Widget>[
           Text("Carlos Crispin"),
           TextField(
             enabled: true,
             maxLength: 20,
             controller: _controller,
           ),
           RaisedButton(
             child:Text("Click"
             ),
             onPressed: (){
               Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Second(dato:_controller.text)));
             },
           )
         ],

       ),
     ),
   );
  }

}