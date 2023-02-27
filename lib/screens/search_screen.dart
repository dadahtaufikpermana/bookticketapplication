import 'package:bookticketapplication/utils/app_layout.dart';
import 'package:bookticketapplication/utils/app_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20), vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("What are \n you looking dor?", style: Styles.headLineStyle1.copyWith(fontSize: AppLayout.getWidth(35)),),
            Gap(AppLayout.getHeight(20)),
            Container(
    child: Row(
    children: [
      Container(
    width: 44,
        padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(AppLayout.getHeight(50),),
            color:  Color(0xFFF4F6FD)
        ),
        child: Center(child: Text("Airplane Ticket"),),
    )
    ],
    ),

            )
          ],
      ),
    );
  }
}
