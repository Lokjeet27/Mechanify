import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:mechanify/screens/welcome.dart';
import 'package:mechanify/constant.dart';
import 'package:mechanify/components/bottom.dart';
import 'package:mechanify/components/frames.dart';
import 'package:mechanify/components/text.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  List<Widget> slidesList = [
    Frame1(),
    Frame1(),
    Frame2(),
  ];
  List<Widget> slideText = [
    SlideName(name: 'Quick & easy Tranings'),
    SlideName(name: 'Basic Online Test Feature'),
    SlideName(name: 'Get Instant Results'),
  ];
  final CarouselController carouselController = CarouselController();
  int currentIdx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image(
            height: 160.0,
            image: AssetImage('Assets/images/logo.png'),
          ),
          Column(
            children: [
              Stack(
                children: [
                  InkWell(
                    onTap: () {
                      print(currentIdx);
                    },
                    child: CarouselSlider(
                      items: slidesList,
                      carouselController: carouselController,
                      disableGesture: true,
                      options: CarouselOptions(
                        enableInfiniteScroll: true,
                        onPageChanged: (val, _) {
                          setState(() {
                            currentIdx = val;
                          });
                        },
                        padEnds: false,
                        pageSnapping: true,
                        viewportFraction: 1.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20.0,
              ),
              slideText[currentIdx],
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  DotsIndicator(
                    dotsCount: slidesList.length,
                    position: currentIdx,
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20.0,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return Weclome();
                  },
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: Bottom_Button(
                width: double.infinity,
                height: 48.0,
                title: 'Start Now',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
