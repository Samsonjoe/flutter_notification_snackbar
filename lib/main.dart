import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  _ApplicationState createState() => _ApplicationState();
}

class _ApplicationState extends State<Application> {

  final GlobalKey<ScaffoldState> _skey = new GlobalKey<ScaffoldState>();

  void method1(){
    _skey.currentState.showSnackBar(new SnackBar(content: new Text('Activated Snackbar')));
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      key: _skey,
      body: new Center(
        child: new RaisedButton(
            onPressed: () {method1();},
        child: new Text('Activate : SnackBar'),),
      ),
    );
  }
}
