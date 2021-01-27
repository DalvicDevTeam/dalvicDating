import 'package:flutter/material.dart';
import 'package:dalvicdating/components/Constants.dart';
import 'package:dalvicdating/components/RaisedBtn.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String dropdownValueProfession = 'Student';
  String dropdownValueAge = '18';
  String dropdownValueMaritalStatus = 'Single';
  String dropdownValueCampus = '6klo';
  String dropdownValueSex = 'Men';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            title: Text(
              'Profile',
              style: TextStyle(color: kTextColor),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.notifications_active,
                  color: kTextColor,
                ),
                onPressed: null,
              ),
              PopupMenuButton(itemBuilder: (BuildContext context) {
                return [
                  PopupMenuItem(child: Text('Flutter')),
                  PopupMenuItem(child: Text('Android')),
                ];
              })
            ],
          ),
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('some.jpg'))),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Container(
                      width: 100.0,
                      height: 200.0,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage('images/fine~2.jpg')
                        )
                      ),

                    ),
                  ),
                  Text(
                    'Profession',
                    style: kTextStyle,
                  ),
                  kSizedBox,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 10)),
                        color: Colors.white,
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValueProfession,
                        style: TextStyle(color: kTextColor),
                        iconEnabledColor: kTextColor,
                        items: <String>[
                          'Student',
                          'Doctor',
                          'Engineer',
                          'Farmer',
                          'Teacher',
                          'Lawyer',
                          'No Proffession',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: kTextColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            dropdownValueProfession = value;
                          });
                        },
                      ),
                    ),
                  ),
                  kSizedBox,
                  Text(
                    'Sex',
                    style: kTextStyle,
                  ),
                  kSizedBox,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 10)),
                        color: Colors.white,
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValueSex,
                        style: TextStyle(color: kTextColor),
                        iconEnabledColor: kTextColor,
                        items: <String>[
                          'Woman',
                          'Men',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: kTextColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            dropdownValueSex = value;
                          });
                        },
                      ),
                    ),
                  ),
                  kSizedBox,
                  Text(
                    'Age',
                    style: kTextStyle,
                  ),
                  kSizedBox,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 10)),
                        color: Colors.white,
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValueAge,
                        style: TextStyle(color: kTextColor),
                        iconEnabledColor: kTextColor,
                        items: <String>[
                          '18',
                          '19',
                          '20',
                          '21',
                          '22',
                          '23',
                          '24',
                          '25',
                          '26',
                          '27',
                          '28',
                          '29',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: kTextColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            dropdownValueAge = value;
                          });
                        },
                      ),
                    ),
                  ),
                  kSizedBox,
                  Text(
                    'Marital Status',
                    style: kTextStyle,
                  ),
                  kSizedBox,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 10)),
                        color: Colors.white,
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValueMaritalStatus,
                        style: TextStyle(color: kTextColor),
                        iconEnabledColor: kTextColor,
                        items: <String>[
                          'Single',
                          'Merried',
                          'Separated',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: kTextColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            dropdownValueMaritalStatus = value;
                          });
                        },
                      ),
                    ),
                  ),
                  kSizedBox,
                  Text(
                    'Campus',
                    style: kTextStyle,
                  ),
                  kSizedBox,
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 70),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(5, 10)),
                        color: Colors.white,
                        border: Border.all()),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton<String>(
                        value: dropdownValueCampus,
                        style: TextStyle(color: kTextColor),
                        iconEnabledColor: kTextColor,
                        items: <String>[
                          '6klo',
                          '5klo',
                          '4klo',
                          'Yared',
                          'Commerce',
                          'Lideta',
                        ].map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(
                              value,
                              style: TextStyle(color: kTextColor),
                            ),
                          );
                        }).toList(),
                        onChanged: (String value) {
                          setState(() {
                            dropdownValueCampus = value;
                          });
                        },
                      ),
                    ),
                  ),
                  kSizedBox,
                  Container(
                    width: 300,
                    height: 60,
                    child: RaisedBtn(
                      txt: 'Save',
                      onRaisedBtnPressed: () {
                        Navigator.pushNamed(context, '/home');
                      },
                    ),
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
