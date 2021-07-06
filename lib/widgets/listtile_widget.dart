import 'package:doctor_appointment/screens/doctor_appointment.dart';
import 'package:flutter/material.dart';

class ListTileWidget extends StatelessWidget {
  String? image;
  String? name;
  String? specialist;
  double? score;
  double? location;
  ListTileWidget(
      this.image, this.name, this.specialist, this.score, this.location);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 84,
        width: 325,
        color: Colors.white,
        child: ListTile(
          title: Text(
            name!,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          leading: Image.asset(image!),
          subtitle: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                specialist!,
                style: TextStyle(color: Colors.grey),
              ),
              Row(
                children: [
                  Container(
                      height: 15,
                      child: Image.asset("assets/images/star icon.png")),
                  Text(" $score"),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                  Container(
                      height: 15,
                      child: Image.asset("assets/images/location icon.png")),
                  Text(" $location km"),
                ],
              )
            ],
          ),
          onTap: () {
            Navigator.of(context)
                .pushNamed(DoctorAppointment.routeName, arguments: {
              'image': image!,
              'name': name!,
              'specialist': specialist!,
            });
          },
        ),
      ),
    );
  }
}
