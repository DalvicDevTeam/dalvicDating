import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dalvicdating/components/RaisedBtn.dart';
import 'package:dalvicdating/components/Constants.dart';

class IndexPage extends StatefulWidget {
  @override
  _IndexPageState createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            constraints: BoxConstraints.expand(),
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('images/d.jpg'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  SvgPicture.asset(
                    'images/undraw_hang_out_h9ud.svg',
                    width: 250,
                  ),
                  Container(
                    width: 300,
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Find people near you',
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 60,
                    child: RaisedBtn(txt: "Find Someone",onRaisedBtnPressed: (){
                      Navigator.pushNamed(context, '/phone_registration');
                    }),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
