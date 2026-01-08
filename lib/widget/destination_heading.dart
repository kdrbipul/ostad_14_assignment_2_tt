import 'package:flutter/material.dart';
class DestinationHeading extends StatelessWidget {
  const DestinationHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Top Destination',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}