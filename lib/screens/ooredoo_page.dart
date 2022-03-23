import 'dart:math';
import 'package:flutter/material.dart';
import 'package:royaldesktopbeta1/widgets/card_data.dart';
import 'package:royaldesktopbeta1/widgets/my_card.dart';
import 'package:royaldesktopbeta1/widgets/slider_widget.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../main.dart';
import '../utils.dart';

class OoredooPage extends StatefulWidget {

  @override
  _OoredooPageState createState() => _OoredooPageState();
}

class _OoredooPageState extends State<OoredooPage> {

  double progressVal = 0.5;
  double progressValue = 0.0;
  double value = 20;

  Color firstIconColor = Color(0xff303030);
  Color secondIconColor = Color(0xff303030);
  Color thirdIconColor =  Color(0xff303030);
  Color fourthIconColor = Color(0xff303030);
  Color fifthIconColor = Color(0xff303030);

  void changeIconColor() {
    if (progressValue >= 0 && progressValue < 18) {
      print('yeeeeeeeeeees');
      setState(() {
        firstIconColor = Color(0xFF802d38);
      });
    } else {
      setState(() {
        firstIconColor = Color(0xff303030);
      });
    }

    if (progressValue >= 18 && progressValue <= 20) {
      print('yeeeeeeeeeees');
      setState(() {
        secondIconColor = Color(0xFF802d38);
      });
    } else {
      setState(() {
        secondIconColor = Color(0xff303030);
      });
    }

    if (progressValue >= 20 && progressValue < 22) {
      print('yeeeeeeeeeees');
      setState(() {
        thirdIconColor = Color(0xFF802d38);
      });
    } else {
      setState(() {
        thirdIconColor = Color(0xff303030);
      });
    }

    if (progressValue >= 24 && progressValue < 26) {
      print('yeeeeeeeeeees');
      setState(() {
        fourthIconColor = Color(0xFF802d38);
      });
    } else {
      setState(() {
        fourthIconColor = Color(0xff303030);
      });
    }

    if (progressValue >= 27 && progressValue <= 28) {
      print('yeeeeeeeeeees');
      setState(() {
        fifthIconColor = Color(0xFF802d38);
      });
    } else {
      setState(() {
        fifthIconColor = Color(0xff303030);
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5), //backgroundColor: Color.fromRGBO(245, 246, 252,1)

      // appBar: AppBar(
      //   backgroundColor: Colors.black54,
      //   elevation: 0,
      //   leading: IconButton(
      //     icon: Icon(
      //       Icons.menu,
      //       color: Colors.white,
      //     ),
      //     onPressed: () {},
      //   ),
      //   actions: [
      //     IconButton(
      //       icon: Icon(
      //         Icons.login,
      //         color: Colors.white,
      //       ),
      //       onPressed: () {},
      //     )
      //   ],
      // ),

      body: SafeArea(
        // minimum: const EdgeInsets.symmetric(horizontal: 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 410.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.all(Radius.circular(8.0)),
                      color: Colors.transparent,
                    ),
                    child: Image.asset("assets/images/ooredooapp.jpg",
                      // height: 180.0,
                      // width: 240.0,
                    ),
                  ),
                ],
              ),
              // height: 200,
              // child: ListView.separated(
              //     physics: ClampingScrollPhysics(),
              //     separatorBuilder: (context, index) {
              //       return SizedBox(
              //         width: 10,
              //       );
              //     },
              //     itemCount: myCards.length,
              //     shrinkWrap: true,
              //     scrollDirection: Axis.horizontal,
              //     itemBuilder: (context, index) {
              //       return MyCard(
              //         card: myCards[index],
              //       );
              //     }),
            ),
            Container(
              child: new Image.asset('assets/images/ooredoo2.jpg'),
              height: 180,
              width: 200,
              alignment: Alignment.center,
            ),
            Container(
              child: Material(
                color: Colors.transparent,
                child: Container(
                  child: Center(
                    child: Container(
                      width: 180,
                      height: 280,
                      decoration: BoxDecoration(
                        color: Color(0xff525055),
                        shape: BoxShape.circle,
                      ),

                      child: Stack(
                        clipBehavior: Clip.none,
                        children: <Widget>[
                          Positioned.fill(
                            child: Align(
                              alignment: Alignment.center,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.all(Radius.circular(100)),
                                  child: Container(
                                    width: 180 *.9 ,
                                    height: 180,
                                    decoration: BoxDecoration(
                                        color: Color(0xff303030),
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          color: Color(0xff303030),
                                          width: 10,
                                          style: BorderStyle.solid,
                                        ),
                                        boxShadow: [
                                          BoxShadow(
                                              blurRadius: 30,
                                              spreadRadius: 10,
                                              color: Colors.blue.withAlpha(
                                                  normalize(progressVal * 20000, 100, 255)
                                                      .toInt()),
                                              offset: Offset(1, 3))
                                        ]),
                                    child: SleekCircularSlider(
                                      min: kMinDegree,
                                      max: kMaxDegree,
                                      initialValue:22,
                                      appearance: CircularSliderAppearance(
                                        startAngle: 180,
                                        angleRange: 180,
                                        size: kDiameter - 30,
                                        customWidths: CustomSliderWidths(
                                          trackWidth: 25,
                                          shadowWidth: 0,
                                          progressBarWidth: 7, //change position of handler
                                          handlerSize: 7,
                                        ),
                                        customColors: CustomSliderColors(
                                          hideShadow: true,
                                          progressBarColor: Colors.transparent,
                                          trackColor: Colors.transparent,
                                          dotColor: Colors.white,
                                        ),
                                      ),
                                      onChange: (value) {
                                        setState(() {
                                          progressValue = value;
                                          changeIconColor();
                                          progressVal =
                                              normalize(value, kMinDegree, kMaxDegree);
                                        });
                                      },
                                      innerWidget: (percentage) {
                                        return Center(
                                          child: Text(
                                            '${percentage?.toInt()} c',
                                            style: TextStyle(
                                              fontSize: 1,
                                            ),
                                          ),
                                        );
                                      },
                                    ),
                                  )),
                            ),
                          ),
                          Positioned(
                            child: CircleButton(
                              //first icon
                                color: firstIconColor,
                                onTap: () => print("Cool"), iconData: Icons.store ),

                            top: (280 / 2) - (iconSize / 2),
                            left: -68,
                          ),
                          Positioned(
                            child: CircleButton(
                                color: fifthIconColor,

                                onTap: () => print("Cool"), iconData: Icons.network_check ),

                            top: (280 / 2) - (iconSize / 2),
                            left: 188,
                            // right: 10.0,
                          ),
                          Positioned(
                            child: CircleButton(
                              //top icon
                                color: thirdIconColor,
                                // iconColor: ourChangedValue > 21 && ourChangedValue < 23? Colors.red:Color(0xff303030),
                                onTap: () => print("Cool " +
                                    (102 % 5).toString() +
                                    "    " +
                                    ((250 / 2) - (iconSize / 2)).toString()),
                                iconData: Icons.navigation_outlined),
                            // top: .9*(mywid2/2)-90-iconSize,
                            top: -18,
                            left: 170/2-iconSize/2,
                          ),
                          Positioned(
                            child: CircleButton(
                                color: fourthIconColor,
                                // iconColor: ourChangedValue > 24 && ourChangedValue <26 ? Colors.red:Color(0xff303030),
                                onTap: () => print("sin " +
                                    (sin(45)).toString() +
                                    "   ll  " +
                                    (90 * sin(45)).toString() +
                                    "  cos " +
                                    (90 * cos(45)).toString() +
                                    "Cool " +
                                    (102 % 5).toString() +
                                    "    " +
                                    ((250 / 2) - (iconSize / 2)).toString()),
                                iconData: Icons.map_outlined),


                            top: 260/2 - 180/2 * sin(45) - iconSize/2,
                            left: 170/2+180/2 * cos(45)+iconSize/2,//  mywid3/2 +
                          ),
                          Positioned(
                            child: CircleButton(
                                color: secondIconColor,
                                // iconColor: ourChangedValue >18 && ourChangedValue <20 ? Colors.red:Color(0xff303030),
                                onTap: () => print("Cool " +
                                    (102 % 5).toString() +
                                    "    " +
                                    ((250 / 2) - (iconSize / 2)).toString()),
                                iconData: Icons.info_outline),
                            // top: .9*(mywid2/2)-90-iconSize,
                            top: 260/2 - 180/2 * sin(45) - iconSize/2,//
                            right:  170/2+180/2 * cos(45)+iconSize/2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
