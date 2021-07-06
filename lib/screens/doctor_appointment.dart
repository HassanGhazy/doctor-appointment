import 'package:doctor_appointment/widgets/evening_appointment.dart';
import 'package:doctor_appointment/widgets/morning_appointment.dart';
import 'package:flutter/material.dart';

class DoctorAppointment extends StatelessWidget {
  static const routeName = '/doctor-appointment';
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    final data =
        ModalRoute.of(context)!.settings.arguments as Map<String?, String?>;
    String? image = data['image'];
    String? name = data['name'];
    String? specialist = data['specialist'];
    //Map<String, String>? data = map as Map<String, String>;
    return Scaffold(
      backgroundColor: const Color(0xffF6F6F6),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xff0A3D5C),
        actions: [
          Image.asset("assets/images/notification icon.png"),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 150,
            width: width,
            decoration: BoxDecoration(
              color: const Color(0xff0A3D5C),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                      height: 100,
                      width: 80,
                      child: Image.asset(
                        image!,
                        fit: BoxFit.cover,
                      )),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name!,
                        style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: const Color(0xffffffff)),
                      ),
                      Text(
                        specialist!,
                        style: TextStyle(
                            fontSize: 15, color: const Color(0xffffffff)),
                      ),
                      getStarWidgets(),
                    ],
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "April 2020",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              getCalender("Mon", "21", true),
              getCalender("Tue", "22", false),
              getCalender("Wed", "23", false),
              getCalender("Thu", "24", false),
              getCalender("Fri", "25", false),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Morning",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(width: width, height: 80, child: MorningAppointment()),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              "Evening",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          Container(width: width, height: 80, child: EveningAppointment()),
          Center(
            child: Container(
              width: width - 100,
              child: ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff127062))),
                onPressed: () {},
                child: Text("Make An Appointment"),
              ),
            ),
          ),
          // Container(
          //   width: 50,
          //   height: 50,
          //   color: const Color(0xff000000),
          //   child: Stack(
          //     children: [
          //       Positioned(
          //         top: 0,
          //         right: 0,
          //         child: Container(
          //           width: 50,
          //           height: 50,
          //           color: const Color(0xff000000),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
        ],
      ),
    );
  }

  Widget getStarWidgets() {
    List<Widget> list = [];
    for (var i = 0; i < 4; i++) {
      list.add(Container(
        height: 18,
        width: 18,
        child: Image.asset(
          "assets/images/star icon.png",
          fit: BoxFit.cover,
        ),
      ));
    }
    list.add(Container(
      height: 14,
      width: 10,
      child: Image.asset(
        "assets/images/half star icon.png",
        fit: BoxFit.cover,
      ),
    ));

    return new Row(children: list);
  }

  Widget getCalender(String? day, String? date, bool? active) {
    return Container(
      width: 50,
      height: 70,
      decoration: BoxDecoration(
        color: (active!) ? const Color(0xff127062) : const Color(0xffffffff),
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            day!,
            style: TextStyle(
                fontSize: 13,
                fontWeight: FontWeight.bold,
                color: (active)
                    ? const Color(0xffffffff)
                    : const Color(0xff000000)),
          ),
          Text(
            date!,
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
