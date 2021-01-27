import 'package:flutter/material.dart';
import 'package:dalvicdating/screens/ProfilePage.dart';
import 'package:dalvicdating/screens/CalendarPage.dart';
import 'package:dalvicdating/screens/PeopleNearYouPage.dart';
import 'package:dalvicdating/components/Constants.dart';


class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {

  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context){

    List<Widget> _widgetOptions = <Widget>[
      PeopleNearYouPage(),
      CalanderPage(),
      ProfilePage(),
    ];

    return Scaffold(
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(0.0),
        child: BottomNavigationBar(
          currentIndex: _selectedIndex,
          showSelectedLabels: false,
          showUnselectedLabels: false,
//          backgroundColor: kNavigationBarBackgroundColor,
          selectedItemColor: Colors.white,
          elevation: 100,

          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.navigation,color: kTextColor,),
              title: Text('PEOPLE NEAR YOU'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat,color: kTextColor,),
              title: Text('CHATE'),

            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person,color: kTextColor,),
              title: Text('PROFILE'),
            ),
          ],

          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              print( index);
            });
          },

        ),
      ),

      
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }
}
