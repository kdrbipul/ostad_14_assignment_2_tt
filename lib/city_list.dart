import 'package:flutter/material.dart';
import 'package:ostad_14_assignment_2_tt/city_item.dart';
import 'package:ostad_14_assignment_2_tt/widget/top_bar.dart';

class CityList extends StatelessWidget {
  const CityList({super.key});

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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TopBar(),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Top Destination',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                
                SizedBox(
                  height: 300,
                  width: double.infinity,
                  child: Expanded(
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                      ),
                      itemCount: cityItem.length - 3,
                      itemBuilder: (context, index){
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
                                image: AssetImage(cityItem[index].image),
                                fit: BoxFit.cover,
                                height: 300,
                                width: 300,
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
                                  cityItem[index].name,
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
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
