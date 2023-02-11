import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DiceApp(),
      ),
    ),
  );
}

class DiceApp extends StatefulWidget {
  const DiceApp({Key key}) : super(key: key);

  @override
  State<DiceApp> createState() => _DiceAppState();
}

class _DiceAppState extends State<DiceApp> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('left button pressed');
                  },
                  child: Image(image: AssetImage('images/dice1.png')))),
          Expanded(
              child: TextButton(
                  onPressed: () {
                    print('right button pressed');
                  },
                  child: Image(image: AssetImage('images/dice1.png'))))
        ],
      ),
    );
  }
}
