import 'package:flutter/material.dart';
class TrendingHeading extends StatelessWidget {
  const TrendingHeading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Trending Package',
      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }
}