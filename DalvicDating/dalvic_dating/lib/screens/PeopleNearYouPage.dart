import 'package:dalvicdating/components/Constants.dart';
import 'package:flutter/material.dart';
import 'package:dalvicdating/components/customListItem.dart';
class PeopleNearYouPage extends StatefulWidget {
  @override
  _PeopleNearYouPageState createState() => _PeopleNearYouPageState();
}

class _PeopleNearYouPageState extends State<PeopleNearYouPage> {
  final List<String> entries = <String>['A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C','A', 'B', 'C'];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar:AppBar(
            backgroundColor: Colors.white,
            title: Text('People Near You',style: TextStyle(
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

          ) ,
          body: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: entries.length,

            itemBuilder: (BuildContext context,int position){
             return CustomListItem(
                profileImage: Image(image: AssetImage('images/fine~2.jpg'),
                ),
                userName: 'james cg',
                isActive: 'online',
                distance: '40m away ...',
              );

            },
          ),
        ),
      ),
    );
  }
}
