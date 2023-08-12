import 'package:flutter/material.dart';
import 'package:mechanify/constant.dart';

class Frame1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width: 276.0,
      decoration: boxDecoration,
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 20.0,
                ),
                Image(
                  image: AssetImage('Assets/images/window.png'),
                  height: 70.0,
                  width: 55.0,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Image(
                  height: 70.0,
                  width: 55.0,
                  image: AssetImage('Assets/images/window.png'),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 25.0, horizontal: 1.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Image(
                      image: AssetImage('Assets/images/Door.png'),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('Assets/images/s1_group.png'),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('Assets/images/Frame.png'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Frame2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260.0,
      width: 276.0,
      decoration: boxDecoration,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('Assets/images/standingMan.png'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image(
                  image: AssetImage('Assets/images/Frame.png'),
                ),
                Image(
                  image: AssetImage('Assets/images/table.png'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
