import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:royaldesktopbeta1/screens/smartlight.dart';
import 'package:royaldesktopbeta1/widgets/card_data.dart';
import 'package:royaldesktopbeta1/widgets/my_card.dart';
import 'package:royaldesktopbeta1/widgets/slider_widget.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';

import '../main.dart';
import '../utils.dart';

class HomePage2 extends StatefulWidget {
  static String tag = '/';

  @override
  _HomePage2State createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {

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


        backgroundColor: Color.fromRGBO(245, 246, 252,1),
        body: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Container(
            //padding: EdgeInsets.only(top: 60,left: 30),
            child: Column(
              children: <Widget>[
                Container(

                  margin: EdgeInsets.only(top: 60,left: 30),

                  // greeting and Time
                  child: Row(

                    children: <Widget>[

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Good evening!",
                            style: TextStyle(
                                fontSize: 24
                            ),
                          ),
                          SizedBox(height: 9,),
                          Text("Waseem Kazi",
                            style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                                fontSize: 16
                            ),
                          )
                        ],
                      ),
                      Expanded(child: Container()),

                      Padding(padding: EdgeInsets.only(right: 30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(DateFormat("hh:mm").format(DateTime.now()),
                              style: TextStyle(
                                  color: Color.fromRGBO(26, 141, 255,1),
                                  fontSize: 28
                              ),
                            ),
                            Text(DateFormat("a").format(DateTime.now()),
                                style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                                    fontSize: 9)
                            ),
                            SizedBox(height: 9,),
                          ],
                        ),
                      )

                    ],
                  ),
                ),

                //box
                Container(
                  height: 200,

                  margin: EdgeInsets.only(right: 20.0,top: 20.0,left: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      //border: Border.all(color: Colors.black),
                      boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                      color: Colors.white
                  ),
                  //foregroundDecoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(16)),
                  child: Stack(

                    children: <Widget>[
                      Container(

                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text("Evening Mode ON",
                              style: TextStyle(
                                  color: Color.fromRGBO(0,0,0,1),
                                  fontSize: 16
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                //1
                                Container(
                                  height: 58,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("6",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.black
                                        ),
                                      ),
                                      Spacer(),
                                      Text("Garden lights",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(0,0,0,.5)
                                        ),
                                      ),
                                      Spacer(),
                                      Text("03:30:33",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Color.fromRGBO(40, 175, 111,1)
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                //2
                                Container(
                                  height: 58,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("4",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.black
                                        ),
                                      ),
                                      Spacer(),
                                      Text("Cordial light",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(0,0,0,.5)
                                        ),
                                      ),
                                      Spacer(),
                                      Text("03:30:33",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Color.fromRGBO(40, 175, 111,1)
                                        ),
                                      )
                                    ],
                                  ),
                                ),

                                //3
                                Container(
                                  height: 58,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: <Widget>[
                                      Text("2",
                                        style: TextStyle(
                                            fontSize: 24,
                                            color: Colors.black
                                        ),
                                      ),
                                      Spacer(),
                                      Text("Hall Lights",
                                        style: TextStyle(
                                            fontSize: 12,
                                            color: Color.fromRGBO(0,0,0,.5)
                                        ),
                                      ),
                                      Spacer(),
                                      Text("02:30:33",
                                        style: TextStyle(
                                            fontSize: 9,
                                            color: Color.fromRGBO(40, 175, 111,1)
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Container(
                              child: Text(
                                "All lights will switch of automatically as per the timer which is there in the setting.",
                                softWrap: true,
                                style: TextStyle(
                                  color: Color.fromRGBO(0,0,0,.5),
                                  fontSize: 10,

                                ),
                              ),
                            )
                          ],
                        ),
                        padding: EdgeInsets.only(left: 28,right: 28),

                      ),

                      Center(
                        child: Row(

                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Image.asset("assets/images/Intersection.png")
                          ],
                        ),
                      )
                    ],
                  ),

                ),

                // Running Appliances

                // Container(
                //   padding: EdgeInsets.only(top: 25,right: 30.0,left: 20),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //     children: <Widget>[
                //       Text("Running Appliances",
                //         style: TextStyle(
                //             fontSize: 16,
                //             color: Colors.black
                //         ),
                //       ),
                //       InkWell(
                //         onTap: (){},
                //         child: Text("See All",
                //           style: TextStyle(
                //               color: Color.fromRGBO(26, 141, 255,1),
                //               fontSize: 16
                //           ),
                //         ),
                //       )
                //     ],
                //   ),
                // ),

                //running appliances list view

                // Container(
                //   // width: 300,
                //     height: 153,
                //     margin: EdgeInsets.only(top: 25),
                //
                //     child: ListView(
                //
                //       shrinkWrap: true,
                //       scrollDirection: Axis.horizontal,
                //       physics: BouncingScrollPhysics(),
                //       children: <Widget>[
                //
                //         //Air conditioner
                //         Container(
                //             height: 153,
                //             width: 135,
                //             margin: EdgeInsets.only(right: 20,left: 20),
                //             padding: EdgeInsets.all(15),
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(16),
                //
                //                 boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                //                 color: Colors.white
                //             ),
                //             child: Stack(
                //               children: <Widget>[
                //                 Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                   children: <Widget>[
                //                     Padding(padding: EdgeInsets.only(bottom: 10),
                //                       child: Image.asset("assets/images/airconditioner.png"),
                //                     ),
                //
                //                     Text("Air Conditioner",
                //                       style: TextStyle(
                //                           fontSize: 12,
                //                           color: Colors.black
                //                       ),
                //                     ),
                //                     Text("On for last 3 Hrs",
                //                       style: TextStyle(
                //                           fontSize: 9,
                //                           color: Color.fromRGBO(0,0,0,.5)
                //                       ),
                //                     ),
                //
                //                     Padding(padding: EdgeInsets.only(top: 10),
                //                       child: Image.asset("assets/images/power.png"),
                //                     )
                //                   ],
                //                 ),
                //                 Positioned(
                //                   left: 97,
                //                   top: 5,
                //                   child: Container(
                //                     height: 8,
                //                     width: 8,
                //
                //                     decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(50),
                //                       color: Color.fromRGBO(26, 162, 63,1),
                //                     ),
                //                   ),
                //                 )
                //               ],
                //             )
                //         ),
                //
                //         //smart Light
                //         Container(
                //             height: 153,
                //             width: 135,
                //             margin: EdgeInsets.only(right: 20),
                //             padding: EdgeInsets.all(15),
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(16),
                //
                //                 boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                //                 color: Colors.white
                //             ),
                //             child: Stack(
                //               children: <Widget>[
                //                 Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                   children: <Widget>[
                //                     Padding(padding: EdgeInsets.only(bottom: 10),
                //                     child:
                //                     IconButton(
                //                       icon: Icon(Icons.wb_incandescent_outlined, size: 40, color: Colors.blue,),
                //                       onPressed: () {
                //                         Navigator.push(
                //                           context,
                //                           MaterialPageRoute(builder: (context) => SmarLight()),
                //                         );
                //                       },
                //                     ),
                //                     ),
                //                     // Padding(padding: EdgeInsets.only(bottom: 10),
                //                     //   child: Image.asset("assets/images/lightbulbon.png"),
                //                     // ),
                //                     Text("Smart Light",
                //                       style: TextStyle(
                //                           fontSize: 12,
                //                           color: Colors.black
                //                       ),
                //                     ),
                //                     Text("On for last 5 Hrs",
                //                       style: TextStyle(
                //                           fontSize: 9,
                //                           color: Color.fromRGBO(0,0,0,.5)
                //                       ),
                //                     ),
                //
                //                     Padding(padding: EdgeInsets.only(top: 10),
                //                       child: Image.asset("assets/images/power.png"),
                //                     )
                //                   ],
                //                 ),
                //                 Positioned(
                //                   left: 97,
                //                   top: 5,
                //                   child: Container(
                //                     height: 8,
                //                     width: 8,
                //
                //                     decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(50),
                //                       color: Color.fromRGBO(26, 162, 63,1),
                //                     ),
                //                   ),
                //                 )
                //               ],
                //             )
                //         ),
                //
                //         //Refrigerator
                //         Container(
                //             height: 153,
                //             width: 135,
                //             margin: EdgeInsets.only(right: 20),
                //             padding: EdgeInsets.all(15),
                //             decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(16),
                //
                //                 boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                //                 color: Colors.white
                //             ),
                //             child: Stack(
                //               children: <Widget>[
                //                 Column(
                //                   crossAxisAlignment: CrossAxisAlignment.start,
                //                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //                   children: <Widget>[
                //                     Padding(padding: EdgeInsets.only(bottom: 10),
                //                       child: Image.asset("assets/images/kitchen.png"),
                //                     ),
                //
                //                     Text("Refrigerator",
                //                       style: TextStyle(
                //                           fontSize: 12,
                //                           color: Colors.black
                //                       ),
                //                     ),
                //                     Text("On for last 2 Days",
                //                       style: TextStyle(
                //                           fontSize: 9,
                //                           color: Color.fromRGBO(0,0,0,.5)
                //                       ),
                //                     ),
                //
                //                     Padding(padding: EdgeInsets.only(top: 10),
                //                       child: Image.asset("assets/images/power.png"),
                //                     )
                //                   ],
                //                 ),
                //                 Positioned(
                //                   left: 97,
                //                   top: 5,
                //                   child: Container(
                //                     height: 8,
                //                     width: 8,
                //
                //                     decoration: BoxDecoration(
                //                       borderRadius: BorderRadius.circular(50),
                //                       color: Color.fromRGBO(26, 162, 63,1),
                //                     ),
                //                   ),
                //                 )
                //               ],
                //             )
                //         )
                //
                //       ],
                //     )
                // ),

                //bill section

                Container(

                  height: 80,


                  margin: EdgeInsets.only(right: 20.0,top: 20.0,left: 20,bottom: 20.0),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      //border: Border.all(color: Colors.black),
                      boxShadow: [BoxShadow(color: Color.fromRGBO(50, 132, 239, .16),offset: Offset(0, 5),blurRadius: 16)],
                      color: Colors.white
                  ),

                  padding: EdgeInsets.only(left: 40,right: 40),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,

                        children: <Widget>[

                          Container(
                            child: Row(
                              children: <Widget>[
                                Image.asset("assets/images/meter.png"),
                                Column(

                                  children: <Widget>[
                                    Text("January 19 Bill",
                                      style: TextStyle(
                                          fontSize: 14,
                                          color: Color.fromRGBO(0,0,0,1)
                                      ),
                                    ),

                                    Row(
                                      children: <Widget>[
                                        Text("Due Date ",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color.fromRGBO(0,0,0,.5)
                                          ),
                                        ),
                                        Text("6 Days ",
                                          style: TextStyle(
                                              fontSize: 11,
                                              color: Color.fromRGBO(40, 175, 111,1)
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),

                          Column(
                            children: <Widget>[
                              Text("467",
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Color.fromRGBO(0,0,0,1)
                                ),
                              ),
                              Text("Units",
                                style: TextStyle(
                                    fontSize: 10,
                                    color: Color.fromRGBO(0,0,0,.5)
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[

                          Container(
                            child: Row(
                              children: <Widget>[
                                Image.asset("assets/images/bill.png"),
                                Text(" Bill Amount",
                                  style: TextStyle(fontSize: 12,
                                      color: Color.fromRGBO(0,0,0,.5)
                                  ),
                                )
                              ],
                            ),
                          ),

                          Text("\$ 4,654.27",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(0,0,0,1)
                            ),
                          )
                        ],
                      ),

                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      //   children: <Widget>[
                      //
                      //     InkWell(
                      //       onTap: (){},
                      //       child: Text("View Breakdown",
                      //         style: TextStyle(
                      //             fontSize: 14,
                      //             color: Color.fromRGBO(26, 141, 255,1)
                      //         ),
                      //       ),
                      //     ),
                      //
                      //     // RaisedButton(
                      //     //   onPressed: (){},
                      //     //   color: Color.fromRGBO(26, 141, 255,1),
                      //     //   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(6)),
                      //     //
                      //     //   child: Text("Pay Bill",
                      //     //     style: TextStyle(
                      //     //         fontSize: 12,
                      //     //         color: Color.fromRGBO(255, 255, 255,1)
                      //     //     ),
                      //     //   ),
                      //     // )
                      //   ],
                      // ),

                    ],
                  ),
                ),
                Container(
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Center(
                        child: Container(
                          width: 180,
                          height: 340,
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
                                        width: 175 *.9 ,
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
                                    onTap: () => print("Cool"),
                                    iconData: Icons.ac_unit),

                                top: (340 / 2) - (iconSize / 2),
                                left: -68,
                              ),
                              Positioned(
                                child: CircleButton(
                                    color: fifthIconColor,

                                    onTap: () => print("Cool"), iconData: Icons.videocam_outlined ),

                                top: (340 / 2) - (iconSize / 2),
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
                                    iconData: Icons.home),
                                // top: .9*(mywid2/2)-90-iconSize,
                                top: 12,
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
                                    iconData: Icons.whatshot_outlined),

                                top: 320/2 - 180/2 * sin(45) - iconSize/2,
                                left: 170/2+180/2 * cos(45)+iconSize/2,//  mywid3/2 +
                              ),
                              Positioned(
                                child: CircleButton(
                                    color: secondIconColor,
                                    // iconColor: ourChangedValue >18 && ourChangedValue <20 ? Colors.red:Color(0xff303030),
                                    onTap: () =>
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(builder: (context) => SmarLight()),
                                        ),
                                    iconData: Icons.light),
                                // top: .9*(mywid2/2)-90-iconSize,
                                    top: 320/2 - 180/2 * sin(45) - iconSize/2,//
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
        )
    );
  }
}
