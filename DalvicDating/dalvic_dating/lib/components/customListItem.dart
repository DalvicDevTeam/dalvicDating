import 'package:flutter/material.dart';
import 'Constants.dart';

class CustomListItem extends StatelessWidget {
  const CustomListItem({
    this.profileImage,
    this.userName,
    this.distance,
    this.isActive,
  });

  final Widget profileImage;
  final String userName;
  final String distance;
  final String isActive;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              flex: 1,
              child: profileImage,
            ),
            Expanded(
              flex: 3,
              child: _UserDescription(
                userName: userName,
                distance: distance,
                isActive: isActive,
              ),
            ),
            const Icon(
              Icons.more_vert,
              size: 16.0,
            ),
          ],
        ),
      ),
    );
  }
}

class _UserDescription extends StatelessWidget {
  const _UserDescription({
    Key key,
    this.userName,
    this.distance,
    this.isActive,
  }) : super(key: key);

  final String userName;
  final String distance;
  final String isActive;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(5.0, 0.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            userName,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 34.0,
              color: kTextColor
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 2.0)),
          Text(
            distance,
            style: const TextStyle(fontSize: 15.0,color: kTextColor),
          ),
          const Padding(padding: EdgeInsets.symmetric(vertical: 1.0)),
          Text(
            '$isActive',
            style: const TextStyle(fontSize: 15.0,color:kThemeColor ),
          ),
        ],
      ),
    );
  }
}

//
//Center(
//child: Card(
//child: Column(
//mainAxisSize: MainAxisSize.min,
//children: <Widget>[
//ListTile(
//leading: Image(image: AssetImage('images/fine~2.jpg'),),
//title: Text('james nati:${entries[position]}'),
//subtitle: Text('20m away ...'),
//isThreeLine: true,
//trailing: Text('online',style: TextStyle(color: kThemeColor),),
//),
//
//],
//),
//),
//);
