import 'package:flutter/material.dart';
import 'package:ostad_14_assignment_2_tt/city_list.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child:  MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          useMaterial3: true,
          scaffoldBackgroundColor: Colors.grey.shade200,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.lime,
            centerTitle: true,
            titleTextStyle: TextStyle(
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          inputDecorationTheme: const InputDecorationTheme(
            filled: true,
            fillColor: Colors.white,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
            hintStyle: TextStyle(
              color: Colors.grey,
            ),
            prefixIconColor: Colors.grey,
            suffixIconColor: Colors.grey,
          )
        ),
        home: CityList(),
      ),
    );
  }
}
