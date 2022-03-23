import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import '../main.dart';
import '../utils.dart';

class SliderWidget extends StatefulWidget {
  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {

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
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    double mywid2 = 250;
    double mywid3 = 180; // ######## change the knob size
    double safeAreaHeight = MediaQuery.of(context).padding.top;

    double firstContWidth = width;
    double firstContHeight = (height - safeAreaHeight) * .5;
    double secondContWidth = width;
    double secondContHeight = (height - safeAreaHeight) * .3;

return SafeArea(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: firstContWidth,
          height: firstContHeight,
          // color: Colors.black54,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: firstContWidth * .80, // change knob positions
                child: Column(
                  children: [
                    Divider(
                      height: firstContHeight * .50,
                    ),
                    Container(
                      width: firstContWidth * .7,
                      child: Material(
                        color: Colors.transparent,
                          child: Container(
                            child: Center(
                              child: Container(
                                width: mywid3,
                                height: mywid3,
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
                                          width: mywid3 *.9 ,
                                          height: mywid3 ,
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
                                    onTap: () => print("Cool"), iconData: Icons.train,),

                                  top: (mywid3 / 2) - (iconSize / 2),
                                  left: -70,
                                ),
                                Positioned(
                                  child: CircleButton(
                                    color: fifthIconColor,

                                      onTap: () => print("Cool"), iconData: Icons.place),

                                      top: (mywid3 / 2) - (iconSize / 2),
                                      left: 190,
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
                                    ((mywid2 / 2) - (iconSize / 2)).toString()),
                                    iconData: Icons.home),
                                    // top: .9*(mywid2/2)-90-iconSize,
                                    top: -70,
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
                                      ((mywid2 / 2) - (iconSize / 2)).toString()),
                                      iconData: Icons.light),

                                    // top: .9*(mywid2/2)-90-iconSize,
                                    // top: 90 - 90 * sin(45) - 25,
                                      top: 160/2 - mywid3/2 * sin(45) - iconSize/2,
                                      left: 170/2+mywid3/2 * cos(45)+iconSize/2,//  mywid3/2 +
                                    ),
                                Positioned(
                                    child: CircleButton(
                                      color: secondIconColor,
                                        // iconColor: ourChangedValue >18 && ourChangedValue <20 ? Colors.red:Color(0xff303030),
                                        onTap: () => print("Cool " +
                                        (102 % 5).toString() +
                                        "    " +
                                        ((mywid2 / 2) - (iconSize / 2)).toString()),
                                        iconData: Icons.calendar_today_rounded ),
                                        // top: .9*(mywid2/2)-90-iconSize,
                                        top: 160/2 - mywid3/2 * sin(45) - iconSize/2,//
                                        right:  170/2+mywid3/2 * cos(45)+iconSize/2,
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

              // Container(
              //   width: firstContWidth * .24,
              //   height: firstContHeight * .87,
              //   color: Color(0xFF802d38),
              //   child: Padding(
              //     padding: const EdgeInsets.symmetric(vertical: 15.0),
              //     child: Column(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: [
              //         Icon(
              //           Icons.chair,
              //           size: 50,
              //           color: Colors.white30,
              //         ),
              //         Icon(
              //           Icons.electric_car_outlined,
              //           size: 50,
              //           color: Colors.white30,
              //         ),
              //         Icon(
              //           Icons.vpn_key_outlined,
              //           size: 50,
              //           color: Colors.white30,
              //         ),
              //         Icon(
              //           Icons.calendar_view_month,
              //           size: 50,
              //           color: Colors.white,
              //         ),
              //         Icon(
              //           Icons.local_gas_station_rounded,
              //           size: 50,
              //           color: Colors.black,
              //         ),
              //         Container(
              //             width: 50,
              //             height: 50,
              //             decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
              //             child: Icon(
              //               Icons.keyboard_arrow_right_rounded,
              //               size: 50,
              //               color: Colors.white,
              //             )),
              //
              //         // CircleButton(
              //         //   myIconSize: 5,
              //         //     color: firstIconColor,
              //         //     onTap: () => print("Cool"),
              //         //     iconData: Icons.timer
              //         // ),
              //       ],
              //     ),
              //   ),
              // ),

            ],
          ),
        ),
      ],
    )
    );
  }
}
class CircleButton extends StatelessWidget {
  final GestureTapCallback onTap;
  final IconData iconData;
  final Color color;

  CircleButton({Key key, this.onTap, this.iconData,this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    return InkResponse(
      onTap: onTap,
      child: Container(
        width: 60,
        height: 60,
        decoration: BoxDecoration(

          color: color,
          // color: iconColor != null ? iconColor :Color(0xff303030),
          shape: BoxShape.circle,
        ),
        child: Icon(
          iconData,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}