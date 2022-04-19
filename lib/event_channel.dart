import 'package:flutter/material.dart';

class EventChannel extends StatefulWidget {
  const EventChannel({Key? key}) : super(key: key);

  @override
  State<EventChannel> createState() => _EventChannelState();
}

class _EventChannelState extends State<EventChannel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Image.asset('assets/compass.png')),
    );
  }
}
