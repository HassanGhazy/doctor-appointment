import 'package:flutter/material.dart';

class MorningAppointment extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(5),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                getTime("08:30 AM", false),
                getTime("09:00 AM", true),
                getTime("09:30 AM", false),
              ],
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(5),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              getTime("10:00 AM", false),
              getTime("10:30 AM", false),
              getTime("11:00 AM", false),
            ],
          ),
        ),
      ],
    );
  }

  Widget getTime(String? time, bool? active) {
    return Container(
      width: 95,
      height: 30,
      decoration: BoxDecoration(
        color: (active!) ? const Color(0xff127062) : const Color(0xffffffff),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(
            Icons.access_time,
            color: (active ? Color(0xffffffff) : null),
          ),
          Text(
            time!,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: (active)
                    ? const Color(0xffffffff)
                    : const Color(0xff000000)),
          ),
        ],
      ),
    );
  }
}
