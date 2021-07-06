import 'package:doctor_appointment/screens/doctor_appointment.dart';

import './screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Doctor Appointment',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: Home(),
      routes: {
        DoctorAppointment.routeName: (ctx) => DoctorAppointment(),
      },
    );
  }
}
