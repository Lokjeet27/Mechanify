import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';
import 'package:mechanify/components/bottom.dart';
import 'package:mechanify/screens/succes.dart';

class Weclome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image(
                  image: AssetImage('Assets/images/logo.png'),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: Text(
                    'Hello!\nwelcome To\nMechanify Training',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 40.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  'Enter Provided User ID or Pass code',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(
                  height: 40.0,
                ),
                TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    hintText: 'User ID',
                  ),
                ),
                Row(
                  children: [
                    Text(
                      'Pass Code',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 20.0,
                      ),
                    ),
                  ],
                ),
                OtpTextField(
                  numberOfFields: 4,
                  showFieldAsBox: false,
                  borderWidth: 4.0,
                ),
                SizedBox(
                  height: 100.0,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return Success();
                        },
                      ),
                    );
                  },
                  child: Bottom_Button(
                    width: double.infinity,
                    height: 48.0,
                    title: 'Continue',
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Didn\'t get User ID & Password!',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10.0,
                      ),
                    ),
                    Text(
                      'Apply Now',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
