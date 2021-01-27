import 'package:flutter/material.dart';
class CalanderPage extends StatefulWidget {
  @override
  _CalanderPageState createState() => _CalanderPageState();
}

class _CalanderPageState extends State<CalanderPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: FlatButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(
//                builder: (context) => Screen2()
            ));
          },
          child: Text('Go to next screen'),
          color: Colors.white,
        ),
      ),
    );
  }
}

