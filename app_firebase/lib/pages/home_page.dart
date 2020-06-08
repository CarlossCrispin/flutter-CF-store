import 'package:appfirebase/classes/auth_firebase.dart';
import 'package:flutter/material.dart';

import 'animal_form_page.dart';

class HomePage extends StatelessWidget{
  HomePage({this.onSignIn, this.authFirebase});
  final VoidCallback onSignIn;
  final AuthFirebase authFirebase;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          new FlatButton(onPressed:signOut, child: new Text('Cerrar Sesión'))
        ],
        title: Text("Home"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(
              builder: (contex)=>FormAnimal('Nuevo animal',null)));
        },
        shape: StadiumBorder(),
        backgroundColor: Colors.cyan,
        child: Icon(Icons.add,size: 20.0,),
      ),
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),

      ),
    );

  }
  void signOut(){
    authFirebase.signOut();
    onSignIn();
  }
}