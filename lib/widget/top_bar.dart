import 'package:flutter/material.dart';
class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          image: AssetImage('assets/image/london.jpg'),
          fit: BoxFit.cover,
          height: 270,
          width: double.infinity,
        ),
        Container(
          height: 270,
          color: Colors.black.withOpacity(0.35),
        ),
        Positioned(
          bottom: 100,
          left: 20,
          // right: 0,
          child: Text('Explore the World',
            style: TextStyle(fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),),
        ),
        Positioned(
            bottom: 40,
            left: 20,
            right: 80,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search Destination',
                prefixIcon: Icon(Icons.search),
              ),
            )),
      ],
    );
  }
}