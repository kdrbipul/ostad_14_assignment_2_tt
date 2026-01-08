import 'package:flutter/material.dart';
import 'package:ostad_14_assignment_2_tt/widget/destination_card.dart';
import 'package:ostad_14_assignment_2_tt/widget/destination_heading.dart';
import 'package:ostad_14_assignment_2_tt/widget/top_bar.dart';
import 'package:ostad_14_assignment_2_tt/widget/trending_card.dart';
import 'package:ostad_14_assignment_2_tt/widget/trending_heading.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('City List'),
        centerTitle: true,
        actions: [
          CircleAvatar(
            backgroundImage: Image(
              image: AssetImage('assets/image/profile.png'),
            ).image,
            radius: 20,
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TopBar(),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DestinationHeading(),
                  SizedBox(height: 5),
                  DestinationCard(),
                  SizedBox(height: 5),
                  TrendingHeading(),
                  TrendingCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}








