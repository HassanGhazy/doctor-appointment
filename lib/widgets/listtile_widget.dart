import 'package:flutter/material.dart';

import 'package:doctor_appointment/screens/doctor_appointment.dart';

class ListTileWidget extends StatelessWidget {
  const ListTileWidget(
      this.image, this.name, this.specialist, this.score, this.location);
  final String? image;
  final String? name;
  final String? specialist;
  final double? score;
  final double? location;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 84,
        width: 325,
        child: Card(
          child: ListTile(
            title: Text(
              name!,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
            leading: Image.asset(image!),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  specialist!,
                  style: const TextStyle(color: Colors.grey),
                ),
                Row(
                  children: <Widget>[
                    Container(
                        height: 15,
                        child: Image.asset("assets/images/star icon.png")),
                    Text(" $score"),
                    const Padding(padding: EdgeInsets.symmetric(horizontal: 5)),
                    Container(
                        height: 15,
                        child: Image.asset("assets/images/location icon.png")),
                    Text(" $location km"),
                  ],
                )
              ],
            ),
            onTap: () {
              Navigator.of(context).pushNamed(DoctorAppointment.routeName,
                  arguments: <String, String>{
                    'image': image!,
                    'name': name!,
                    'specialist': specialist!,
                  });
            },
          ),
        ),
      ),
    );
  }
}
