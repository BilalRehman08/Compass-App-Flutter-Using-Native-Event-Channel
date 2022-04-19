import 'dart:async';

import 'package:eventchannel/listner.dart';
import 'package:flutter/material.dart';
import 'dart:math' as maths;

class EventChannel extends StatefulWidget {
  const EventChannel({Key? key}) : super(key: key);

  @override
  State<EventChannel> createState() => _EventChannelState();
}

class _EventChannelState extends State<EventChannel> {
  StreamSubscription? streamSubscription;

  List<double>? sensorValues;

  @override
  void initState() {
    sensorValues = <double>[];
    streamSubscription = eventData!.listen((event) {
      setState(() {
        sensorValues = <double>[event.x, event.y, event.z];
        print("Values: $sensorValues");
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // double angle = maths.atan2(sensorValues![1], sensorValues![0]);
    return Scaffold(
        body:
            // Transform.rotate(
            //     angle: maths.pi / 2 - angle,
            //     child:
            Center(child: Image.asset('assets/compass.png'))
        // ),
        );
  }
}
