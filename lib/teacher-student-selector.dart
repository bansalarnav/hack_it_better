import 'package:flutter/material.dart';
import 'package:hack_it_better/details-teacher.dart';
import 'package:hack_it_better/student-details.dart';

class SelectRole extends StatefulWidget {
  @override
  _SelectRoleState createState() => _SelectRoleState();
}

class _SelectRoleState extends State<SelectRole> {
  bool teacher = false;
  bool filled = false;
  Color color1 = Colors.white;
  Color color2 = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black, size: 28),
        title: Text(
          'I am a',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 40,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 12),
          padding: EdgeInsets.only(bottom: 20),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = Colors.blue;
                      color2 = Colors.white;
                      teacher = true;
                      filled = true;
                    });
                  },
                  child: Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width - 28,
                    decoration: BoxDecoration(
                        border: Border.all(color: color1, width: 5),
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 5),
                              color: Color(0xff000000).withOpacity(0.1),
                              blurRadius: 10)
                        ]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 22,
                        ),
                        Image.asset(
                          'images/teacher.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 26,
                        ),
                        Text(
                          'Teacher',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 26),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 27,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      color1 = Colors.white;
                      color2 = Colors.blue;
                      teacher = false;
                      filled = true;
                    });
                  },
                  child: Container(
                    height: 230,
                    width: MediaQuery.of(context).size.width - 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: color2, width: 5),
                        boxShadow: [
                          BoxShadow(
                              offset: Offset(1, 5),
                              color: Color(0xff000000).withOpacity(0.1),
                              blurRadius: 10)
                        ]),
                    child: Column(
                      children: <Widget>[
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 22,
                        ),
                        Image.asset(
                          'images/student.png',
                          height: 100,
                          width: 100,
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 26,
                        ),
                        Text(
                          'Student',
                          style: TextStyle(fontFamily: 'Inter', fontSize: 26),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 20,
                ),
                GestureDetector(
                  onTap: () {
                    if (teacher) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  TeacherDetailsFormScreen()));
                    } else {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => StudentDetailsFormScreen()));
                    }
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
            ),
          ),
        ),
      ),
    );
  }
}
