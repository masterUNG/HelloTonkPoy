import 'package:flutter/material.dart';

// This is Main Method For Start Appp
// void main() {
//   var app = MaterialApp(
//     home: Text('Hello First App'),
//   );
//   runApp(app);
// }

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  Widget myButton() {
    return RaisedButton(
      child: Text('Please Click Me'),
      onPressed: () {
        print('You Click Me');
      },
    );
  }

  Widget showText2(String textString) {
    return Text(textString);
  }

  @override
  Widget build(BuildContext context) {
    Widget myIcon = Icon(Icons.android);

    Widget showText1 = Text(
      'Show Text One',
      style: TextStyle(
          fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.blue[900]),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[600],
          actions: <Widget>[Icon(Icons.call), Icon(Icons.android)],
          leading: Icon(Icons.cake),
          title: Text('This is AppBar'),
        ),
        body: Container(
          padding: EdgeInsets.only(top: 40.0),
          margin: EdgeInsets.all(40.0),
          alignment: Alignment.topCenter,
          color: Colors.yellow,
          child: Column(
            children: <Widget>[
              Container(
                margin: EdgeInsets.only(left: 100.0),
                child: Row(
                  children: <Widget>[myIcon, myIcon, myIcon],
                ),
              ),
              showText1,
              showText2('Test showText2'),
              myButton()
            ],
          ),
        ),
      ),
    );
  }
}
