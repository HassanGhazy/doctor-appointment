import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  String? image;
  String? name;
  int? number;
  CategoryWidget(this.image, this.name, this.number);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90,
        height: 110,
        decoration: BoxDecoration(
          color: const Color(0xff127062),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 5,
            ),
            Image.asset(image!),
            Text(
              name!,
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xffffffff)),
            ),
            Container(
              width: 60,
              height: 20,
              decoration: BoxDecoration(
                color: const Color(0xff1F7366),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Center(
                child: Text(
                  "$number Doctors",
                  style:
                      TextStyle(fontSize: 12, color: const Color(0xffffffff)),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
