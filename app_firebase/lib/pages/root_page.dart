import 'package:appfirebase/classes/auth_firebase.dart';
import 'package:appfirebase/pages/login_page.dart';
import 'package:flutter/cupertino.dart';

import 'home_page.dart';

class RootPage extends StatefulWidget{
  RootPage({Key key, this.authFirebase}):super(key: key);
  final AuthFirebase authFirebase;
  @override
  State<StatefulWidget> createState() => RootPageState();

}

enum AuthStatus{
  notSignedIn,
  signedIn
}

class RootPageState extends State<RootPage>{
  AuthStatus  authStatus = AuthStatus.notSignedIn;
  @override
  void initState() {
    // TODO: implement initState
    widget.authFirebase.currentUser().then((userId){
      setState(() {
        authStatus=userId!=null?AuthStatus.signedIn:AuthStatus.notSignedIn;
      });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    switch(authStatus){
      case AuthStatus.notSignedIn:
        return LoginPage(title:'Login',
            auth: widget.authFirebase,
            onSignIn: () => updateAuthState(AuthStatus.signedIn),);
      case AuthStatus.signedIn:
        return HomePage(onSignIn: () => updateAuthState(AuthStatus.notSignedIn),
          authFirebase: widget.authFirebase,);
    }
  }
  void updateAuthState(AuthStatus auth){
    setState(() {
      authStatus = auth;
    });
  }
}