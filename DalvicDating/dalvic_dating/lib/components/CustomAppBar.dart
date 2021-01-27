import 'package:flutter/material.dart';
import 'Constants.dart';

class CustomAppBar extends StatelessWidget  {
  final String text;

  const CustomAppBar({Key key, this.text}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: Text(text,style: TextStyle(
          color: kTextColor
      ),),

      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.notifications_active,
            color:kTextColor,
          ),
          onPressed: null,
        ),
        PopupMenuButton(

            itemBuilder: (BuildContext context){
              return[
                PopupMenuItem(child: Text('Flutter')),
                PopupMenuItem(child: Text('Android')),
              ];
            })
      ],

    );
  }
}
