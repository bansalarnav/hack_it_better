import 'package:flutter/material.dart';
import 'package:hack_it_better/home.dart';

class StudentDetailsFormScreen extends StatefulWidget {
  @override
  _StudentDetailsFormScreenState createState() =>
      _StudentDetailsFormScreenState();
}

class _StudentDetailsFormScreenState extends State<StudentDetailsFormScreen> {
  int currentStep = 0;
  bool complete = false;

  next() {
    currentStep + 1 != 3
        ? goTo(currentStep + 1)
        : Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  goTo(int step) {
    setState(() => currentStep = step);
  }

  cancel() {
    if (currentStep > 0) {
      goTo(currentStep - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black, size: 28),
          title: Text(
            'Details',
            style: TextStyle(
              fontFamily: 'Inter',
              fontSize: 40,
              fontWeight: FontWeight.w600,
              color: Colors.black,
            ),
          ),
        ),
        body: Container(
            child: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height / 10,
            ),
            Stepper(
                controlsBuilder: (BuildContext context,
                    {VoidCallback onStepContinue, VoidCallback onStepCancel}) {
                  return Row(
                    children: <Widget>[
                      GestureDetector(
                        onTap: onStepContinue,
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.blue,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      Container(),
                    ],
                  );
                },
                currentStep: currentStep,
                onStepContinue: next,
                onStepCancel: cancel,
                onStepTapped: (step) => goTo(step),
                type: StepperType.vertical,
                steps: [
                  Step(
                    title: const Text('New Account'),
                    isActive: currentStep == 0,
                    state: currentStep > 0
                        ? StepState.complete
                        : StepState.editing,
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Email Address'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                      ],
                    ),
                  ),
                  Step(
                    isActive: currentStep == 1,
                    state: currentStep > 1
                        ? StepState.complete
                        : StepState.editing,
                    title: const Text('Education'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Current School/College'),
                        ),
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Grade/Year'),
                        ),
                      ],
                    ),
                  ),
                  Step(
                    isActive: currentStep == 3,
                    state: currentStep > 3
                        ? StepState.complete
                        : StepState.editing,
                    title: const Text('Contact'),
                    content: Column(
                      children: <Widget>[
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Mobile Number'),
                        ),
                        TextFormField(
                          decoration:
                              InputDecoration(labelText: 'Address (optional)'),
                        ),
                      ],
                    ),
                  )
                ]),
          ],
        )));
  }
}
