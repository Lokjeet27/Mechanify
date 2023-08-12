import 'package:flutter/material.dart';
import 'package:mechanify/components/bottom.dart';
import 'package:mechanify/constant.dart';
import 'package:mechanify/components/bikeInfor.dart';

class Training extends StatelessWidget {
  @override
  List<BikeInfo> bikes = [
    BikeInfo(specific: BottomLook()),
    BikeInfo(specific: BikeBottom()),
    BikeInfo(specific: BottomLook()),
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        elevation: 0.0,
        centerTitle: true,
        title: Text(
          'Mechanify Training',
        ),
      ),
      body: Column(
        children: [
          TopBar(),
          SizedBox(
            height: 30.0,
          ),
          Expanded(
            child: Container(
              child: ListView(
                children: bikes,
              ),
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              decoration: BoxDecoration(
                color: Color(0xffF9F9F9),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.0),
                  topLeft: Radius.circular(30.0),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class TopBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 55.0),
      child: Stack(
        children: [
          Container(
            height: 50.0,
            width: 200.0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'Test',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 20.0,
                ),
              ],
            ),
            decoration: BoxDecoration(
              border: Border.all(width: 2.0, color: Colors.white),
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
          ),
          Container(
            height: 50.0,
            width: 100.0,
            child: DecoratedBox(
              child: Center(
                child: Text(
                  'Trainings',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Colors.blue,
                  ),
                ),
              ),
              decoration: boxDecoration.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
