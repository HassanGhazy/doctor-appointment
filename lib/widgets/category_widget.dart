import 'package:flutter/material.dart';

class CategoryWidget extends StatelessWidget {
  const CategoryWidget(this.image, this.name, this.number);
  final String? image;
  final String? name;
  final int? number;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 90,
        height: 110,
        decoration: const BoxDecoration(
          color: Color(0xff127062),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const SizedBox(
              height: 5,
            ),
            Image.asset(image!),
            Text(
              name!,
              style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Color(0xffffffff)),
            ),
            Container(
              width: 60,
              height: 20,
              decoration: const BoxDecoration(
                color: Color(0xff1F7366),
                borderRadius: BorderRadius.all(Radius.circular(8)),
              ),
              child: Center(
                child: Text(
                  "$number Doctors",
                  style:
                      const TextStyle(fontSize: 12, color: Color(0xffffffff)),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            )
          ],
        ),
      ),
    );
  }
}
