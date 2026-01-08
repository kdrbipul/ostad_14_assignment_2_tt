import 'package:flutter/material.dart';

import '../city_item.dart';
class DestinationCard extends StatelessWidget {
  const DestinationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: 390,
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemCount: cityItem.length - 1,
        itemBuilder: (context, index) {
          final city = cityItem.elementAt(index);
          return Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            color: Colors.green,
            elevation: 3,
            child: Stack(
              children: [
                Image(
                  image: AssetImage(city.image),
                  fit: BoxFit.cover,
                  height: double.infinity,
                  width: double.infinity,
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 30,
                    width: 150,
                    color: Colors.grey.shade400,
                  ),
                ),
                Positioned(
                  left: 10,
                  bottom: 3,
                  child: Text(
                    city.name,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}