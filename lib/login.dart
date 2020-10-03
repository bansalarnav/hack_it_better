import 'package:flutter/material.dart';
import 'package:hack_it_better/teacher-student-selector.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'Sign Up!',
            style: TextStyle(color: Colors.black, fontSize: 40),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                children: <Widget>[
                  SizedBox(height: MediaQuery.of(context).size.height / 18),
                  Image.asset('images/login-page-img.png',
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width),
                  SizedBox(height: MediaQuery.of(context).size.height / 4),
                  TextFormField(
                    autocorrect: true,
                    keyboardType: TextInputType.multiline,
                    decoration: InputDecoration(
                        labelText: 'Full Name',
                        //suffix: ,
                        disabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 1.5, color: Colors.grey[400]),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide:
                              BorderSide(width: 2, color: Colors.grey[400]),
                        ),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(
                              color: Colors.blue,
                              width: 1,
                            ))),
                    maxLines: null,
                    minLines: null,
                    textAlign: TextAlign.center,
                    textCapitalization: TextCapitalization.sentences,
                    style: TextStyle(
                        fontSize: 20,
                        fontFamily: 'Inter',
                        color: Color(0xff111111),
                        fontWeight: FontWeight.w500),
                    initialValue: '',
                    onChanged: (value) {
                      name = value;
                    },
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 27,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(
                        builder: (context) => SelectRole()
                      ));
                    },
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width - 48,
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Text(
                          'Continue',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 21,
                              fontFamily: "Inter"),
                        ),
                      ),
                    ),
                  ),
                ],
              )),
        ));
  }
}
