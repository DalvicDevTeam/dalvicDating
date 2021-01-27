import 'package:flutter/material.dart';
import 'package:dalvicdating/components/Constants.dart';

class RaisedBtn extends StatelessWidget {
  final String txt;
  final Function onRaisedBtnPressed;

  const RaisedBtn({Key key, this.txt, this.onRaisedBtnPressed}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text(txt),
      color: kThemeColor,
      textColor: Colors.white,
      elevation: 10.0,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
          side: BorderSide(color: kThemeColor)),
      onPressed: onRaisedBtnPressed,
    );
  }
}
