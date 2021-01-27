import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:dalvicdating/components/RaisedBtn.dart';
import 'package:dalvicdating/components/Constants.dart';

class PhoneRegistration extends StatefulWidget {



  @override
  _PhoneRegistrationState createState() => _PhoneRegistrationState();
}

class _PhoneRegistrationState extends State<PhoneRegistration> {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('some.jpg')
              )
            ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 50.0),
                    child: SvgPicture.asset("images/undraw_Newsletter_re_wrob.svg",width: 300,),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: IntlPhoneField(
                      decoration: InputDecoration(
                        labelText: 'Phone Number',
                        border: OutlineInputBorder(
                          borderSide: BorderSide(),
                        ),
                      ),
                      initialCountryCode: 'ET',
                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 35),
                    child: Text(
                      'we will send you a one time sms message.'
                          'carrier rate may apply'
                    ),
                  ),

                  Container(
                    width: 300,
                    height: 60,
                    child: RaisedBtn(txt: 'Next',onRaisedBtnPressed: (){
                      Navigator.pushNamed(context, '/phone_verification');
                    },),
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
