import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_neat_and_clean_calendar/flutter_neat_and_clean_calendar.dart';
import 'package:royaldesktopbeta1/widgets/card_data.dart';
import 'package:royaldesktopbeta1/widgets/my_card.dart';
import 'package:royaldesktopbeta1/widgets/slider_widget.dart';
import 'package:sleek_circular_slider/sleek_circular_slider.dart';
import 'package:table_calendar/table_calendar.dart';

import '../main.dart';
import '../utils.dart';

class CalenderPage extends StatefulWidget {

  @override
  _CalenderPageState createState() => _CalenderPageState();
}

class _CalenderPageState extends State<CalenderPage> {

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

    final Map<DateTime, List<NeatCleanCalendarEvent>> _events = {
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day): [
        NeatCleanCalendarEvent('Event A',
            startTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 10, 0),
            endTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day, 12, 0),
            description: 'A special event',
            color: Colors.blue[700]),
      ],
      DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day + 2):
      [
        NeatCleanCalendarEvent('Event B',
            startTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 10, 0),
            endTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 12, 0),
            color: Colors.orange),
        NeatCleanCalendarEvent('Event C',
            startTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 14, 30),
            endTime: DateTime(DateTime.now().year, DateTime.now().month,
                DateTime.now().day + 2, 17, 0),
            color: Colors.pink),
      ],
    };

    return Scaffold(
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              child: Calendar(
                startOnMonday: true,
                weekDays: ['Mon', 'Tue', 'Wed', 'Thurs', 'Fri', 'Sat', 'Sun'],
                events: _events,
                isExpandable: true,
                eventDoneColor: Colors.green,
                selectedColor: Colors.blue,
                todayColor: Colors.blue,
                // dayBuilder: (BuildContext context, DateTime day) {
                //   return new Text("hello");
                // },
                eventListBuilder: (BuildContext context,
                    List<NeatCleanCalendarEvent> _selectesdEvents) {
                  return new Text(
                      "Event A             Event B            Event C",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,

                      ),
                  );
                },
                eventColor: Colors.grey,
                // locale: 'de_DE',
                // todayButtonText: 'Heute',
                expandableDateFormat: 'EEEE, dd. MMMM yyyy',
                dayOfWeekStyle: TextStyle(
                    color: Colors.black, fontWeight: FontWeight.w600, fontSize: 14),
              ),
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
                              onTap: () => print("Cool"), iconData: Icons.add,),

                            top: (280 / 2) - (iconSize / 2),
                            left: -68,
                          ),
                          Positioned(
                            child: CircleButton(
                                color: fifthIconColor,

                                onTap: () => print("Cool"), iconData: Icons.place),

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
                                iconData: Icons.alarm),
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
                                iconData: Icons.wallet_giftcard_outlined),


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
                                iconData: Icons.calendar_today_rounded ),
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

// Previous calender version table calender
//Scaffold(
//       backgroundColor: Colors.blueGrey,
//       body: SafeArea(
//         minimum: const EdgeInsets.symmetric(horizontal: 10),
//         child: Column(
//           children: [
//             // const Card(
//             //   elevation: 5.0,
//             //   shape: RoundedRectangleBorder(
//             //     borderRadius: BorderRadius.all(
//             //       Radius.circular(10),
//             //     ),
//             //     side: BorderSide( color: Colors.black, width: 2.0),
//             //   ),
//             // ),
//             Container(
//               child: TableCalendar(
//                   calendarFormat: CalendarFormat.month,
//                   weekendDays: [DateTime.friday],
//                   startingDayOfWeek: StartingDayOfWeek.sunday,
//                   daysOfWeekHeight: 20.0,
//                   rowHeight: 32.0,
//                   calendarStyle: const CalendarStyle(
//                     defaultTextStyle: TextStyle(
//                       fontSize: 18
//                     ),
//                     todayTextStyle: TextStyle(
//                       fontSize: 18,
//                       // fontWeight: FontWeight.bold,
//                       color: Colors.black,
//                     )
//                   ),
//                   focusedDay: DateTime.now(),
//                   firstDay: DateTime(1990),
//                   lastDay:  DateTime(2050),
//                   headerStyle: const HeaderStyle(
//                     titleTextStyle:
//                     TextStyle(color: Colors.white, fontSize: 24.0),
//                     decoration: BoxDecoration(
//                         color: Color(0xFF802d38),
//                         borderRadius: BorderRadius.only(
//                             topLeft: Radius.circular(15),
//                             topRight: Radius.circular(15))),
//                     formatButtonTextStyle:
//                     TextStyle(color: Colors.black, fontSize: 20.0, fontWeight: FontWeight.w500),
//                     formatButtonDecoration: BoxDecoration(
//                       color: Colors.white,
//                       borderRadius: BorderRadius.all(
//                         Radius.circular(5.0),
//                       ), ),
//                     leftChevronIcon: Icon(
//                       Icons.chevron_left,
//                       color: Colors.black,
//                       size: 30,
//                     ),
//                     rightChevronIcon: Icon(
//                       Icons.chevron_right,
//                       color: Colors.black,
//                       size: 30,
//                     ),
//                   ),
//                 ),
//             ),
//           ],
//         ),
//       ),
//     );