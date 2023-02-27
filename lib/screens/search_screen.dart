import 'package:bookticketapplication/utils/app_style.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          Column(
            children: [
              Text("Airline Tickets"),
              Text("Hotels")
            ],
          )
        ],
      ),
    );
  }
}
