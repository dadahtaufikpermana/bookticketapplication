import 'package:bookticketapplication/utils/app_layout.dart';
import 'package:bookticketapplication/utils/app_style.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/addTabs.dart';
import '../widget/double_text_widget.dart';
import '../widget/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(
            horizontal: AppLayout.getWidth(20),
            vertical: AppLayout.getHeight(10)),
        children: [
          Gap(AppLayout.getHeight(40)),
          Text("What are\nyou looking for?",
              style: Styles.headLineStyle1
                  .copyWith(fontSize: AppLayout.getWidth(35))),
          Gap(AppLayout.getHeight(20)),
          AddTabs(firstTab: "Airline tickets", secondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
          Gap(AppLayout.getHeight(25)),
          IconTextWidget(icon: Icons.flight_takeoff_rounded, text: "Departure"),
          Gap(AppLayout.getHeight(15)),
          IconTextWidget(icon: Icons.flight_land_rounded, text: "Arrival"),
          Gap(AppLayout.getHeight(25)),
          Container(
              padding: EdgeInsets.symmetric(
                  vertical: AppLayout.getHeight(18),
                  horizontal: AppLayout.getWidth(15)),
              decoration: BoxDecoration(
                  color: const Color(0xD91130CE),
                  borderRadius: BorderRadius.circular(AppLayout.getWidth(10))),
              child: Center(
                child: Text(
                  "Find Ticket",
                  style: Styles.headLineStyle3.copyWith(
                      color: Colors.white, fontSize: AppLayout.getWidth(20)),
                ),
              )),
          Gap(AppLayout.getHeight(40)),
          const AppDoubleTextWidget(
              bigText: "Recent Purchased", smallText: "View All"),
          Gap(AppLayout.getHeight(15)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(550),
                width: size.width * 0.42,
                padding: EdgeInsets.symmetric(
                    horizontal: AppLayout.getHeight(15),
                    vertical: AppLayout.getWidth(15)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade200,
                        blurRadius: 1,
                        spreadRadius: 1)
                  ],
                ),
                child: Column(children: [
                  Container(
                    height: AppLayout.getHeight(200),
                    decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.circular(AppLayout.getHeight(12)),
                        image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/three.png"))),
                  ),
                  Gap(AppLayout.getHeight(10)),
                  Text(
                      "20%\n discount on early booking of flight. Dont miss it",
                      style: Styles.headLineStyle2
                          .copyWith(fontSize: AppLayout.getWidth(20))),
                  Gap(AppLayout.getHeight(10)),
                  Text("www.gu-global.com",
                      style: Styles.textStyle
                          .copyWith(fontSize: AppLayout.getWidth(20))),
                ]),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(180),
                        decoration: BoxDecoration(
                          color: Color(0xFF3AB8B8),
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(18)),
                        ),
                        padding: EdgeInsets.symmetric(
                            horizontal: AppLayout.getWidth(15),
                            vertical: AppLayout.getHeight(15)),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Discount\nfor survey",
                                style: Styles.headLineStyle2.copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              Gap(AppLayout.getHeight(10)),
                              Text(
                                "Take  the survey about our service and get discount",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                    fontSize: AppLayout.getWidth(18)),
                              ),
                            ]),
                      ),
                      Positioned(
                        top: -40,
                        right: -50,
                        child: Container(
                          padding: EdgeInsets.all(AppLayout.getWidth(30)),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Color(0xFF189999), width: 18),
                              color: Colors.transparent),
                        ),
                      )
                    ],
                  ),
                  Gap(AppLayout.getHeight(15)),
                  Container(
                    width: size.width * 0.42,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.circular(AppLayout.getHeight(20)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.shade200,
                            blurRadius: 1,
                            spreadRadius: 1)
                      ],
                    ),
                    child: Column(
                        children: [
                      Container(
                        width: size.width * 0.44,
                        height: AppLayout.getHeight(210),
                        decoration: BoxDecoration(
                          borderRadius:
                              BorderRadius.circular(AppLayout.getHeight(15)),
                          color: const Color(0xFFEC6545),
                        ),
                        child: Center(
                          child: Column(
                            children: [
                              Gap(AppLayout.getHeight(30)),
                              Text(
                                "Take Love",
                                style: Styles.headLineStyle2.copyWith(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                              Gap(AppLayout.getHeight(5)),
                              RichText(text: const TextSpan(
                                children: [
                                  TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 38),
                                  ),
                                  TextSpan(
                                    text: '🤭',
                                    style: TextStyle(fontSize: 50),
                                  ),
                                  TextSpan(
                                    text: '🥰',
                                    style: TextStyle(fontSize: 38)
                                  )
                                ]
                              ))
                            ],
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
