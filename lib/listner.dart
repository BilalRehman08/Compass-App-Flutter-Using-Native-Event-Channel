import 'package:flutter/services.dart';

const EventChannel channel = EventChannel("com.example.eventchannel");

class EventChannelData {
  // x Axis
  final double x;

  // y Axis
  final double y;

  // z Axis
  final double z;

  double getZ() => this.z;

  EventChannelData(this.x, this.y, this.z);

  @override
  String toString() => '[EventChannelData (x: $x, y:$y, z:$z)]';
}

EventChannelData listOfValues(List<double> data) {
  return EventChannelData(data[0], data[1], data[2]);
}

Stream<EventChannelData>? magneticEvent;

Stream<EventChannelData>? get eventData {
  // ignore: prefer_conditional_assignment
  if (magneticEvent == null) {
    magneticEvent = channel
        .receiveBroadcastStream()
        .map((event) => listOfValues(event.cast<double>()));
  }

  return magneticEvent;
}
