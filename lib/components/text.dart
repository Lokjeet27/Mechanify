import 'package:flutter/material.dart';

class SlideName extends StatelessWidget {
  final String name;
  SlideName({required this.name});
  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: 20.0,
      ),
    );
  }
}
