import 'package:dalvicdating/components/Constants.dart';
import 'package:flutter/material.dart';

class PhoneVerification extends StatefulWidget {
  @override
  _PhoneVerificationState createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  String textFieldValue = "";



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('some.jpg')),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),

            child: Container(
              margin: EdgeInsets.only(bottom: 200),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'Verification Code',
                      style: kLabelTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      'please type verification code sent to + 251976346787'
                    ),
                  ),
                  TextField(
                    enabled: true,
                    autofocus: true,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.done,
                    style: TextStyle(color: Color(0xFF8D8E98),),
                    maxLength: 4,
                    decoration: InputDecoration(
                      labelText: 'Verification Code',
                      border: OutlineInputBorder(),
                    ),
                    onSubmitted: (value) {
                      setState((){
                        textFieldValue = value;
                      });
                      Navigator.pushNamed(context, '/add_profile');
                    },
                  )

                ],
              ),
            ),
          ),
        ),



      ),
    ));
  }
}
