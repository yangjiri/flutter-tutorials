import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CupertinoPage extends StatefulWidget {
  @override
  _CupertinoPageState createState() => _CupertinoPageState();
}

class _CupertinoPageState extends State<CupertinoPage> {
  @override
  Widget build(BuildContext context) {
    bool _switch = true;
    return Scaffold(
      appBar: CupertinoNavigationBar(
        middle: Text('cuper UI'),
      ),
      body:Column(
        children: <Widget>[
          CupertinoButton(
            child: Text('cupertino Button'),
          ),
          CupertinoSwitch(
              value: _switch,
              onChanged: (bool value){
                setState(() {
                  _switch = value;
                });
              },
          ),
          RaisedButton(
              child: Text('ssss')
          ),
          Switch( value: _switch,
            onChanged: (bool value){
              setState(() {
                _switch = value;
              });
            },)
        ],
      ),
    );
  }
}