import 'package:flutter/material.dart';
import 'package:mechanify/constant.dart';
import 'package:mechanify/components/bottom.dart';

class BikeInfo extends StatelessWidget {
  final Widget specific;
  BikeInfo({required this.specific});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 260.0,
            width: 400.0,
            decoration: boxDecoration.copyWith(color: Colors.white, boxShadow: [
              BoxShadow(blurRadius: 10.0),
            ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 40.0,
                      width: 160.0,
                      decoration: BoxDecoration(
                        color: Color(0xff00E4BA),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(29.0),
                          topRight: Radius.circular(12.0),
                          bottomRight: Radius.circular(12.0),
                        ),
                      ),
                      child: Center(
                        child: Text('Step 1st'),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'FAQ Questions',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          Image(
                            image: AssetImage(
                              'Assets/images/image 160.png',
                            ),
                            fit: BoxFit.fitWidth,
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            BikeFeatures(
                              title: 'knowledge of the field',
                            ),
                            BikeFeatures(
                              title: '20 question',
                            ),
                            BikeFeatures(
                              title: 'need to give 12 correct answer',
                            ),
                            BikeFeatures(
                              title: '5 mintues test',
                            ),
                          ],
                        ),
                      ),
                      specific,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class BikeBottom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Bottom_Button(width: 100.0, title: 'Start Now', height: 30.0),
      ],
    );
  }
}

class BottomLook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Star(),
        Star(),
        Star(),
        Star(),
        Star(),
      ],
    );
  }
}

class Star extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Icon(
      Icons.star,
      color: Colors.yellow,
      size: 30.0,
    );
  }
}

class BikeFeatures extends StatelessWidget {
  final String title;
  BikeFeatures({required this.title});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.check,
          size: 10.0,
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 15.0,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
