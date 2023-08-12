import 'package:flutter/material.dart';
import 'package:mechanify/constant.dart';

class Bottom_Button extends StatelessWidget {
  final String title;
  final double height;
  final double width;
  Bottom_Button(
      {required this.title, required this.height, required this.width});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: DecoratedBox(
        child: Center(
          child: Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ),
        decoration: boxDecoration.copyWith(color: Colors.blue),
      ),
    );
  }
}
