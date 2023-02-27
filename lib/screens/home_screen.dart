import 'package:bookticketapplication/screens/hotel_screen.dart';
import 'package:bookticketapplication/screens/ticket_view.dart';
import 'package:bookticketapplication/utils/app_info_list.dart';
import 'package:bookticketapplication/utils/app_style.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Good Morning",
                          style: Styles.headLineStyle3,
                        ),
                        Text(
                          "Book Tickets",
                          style: Styles.headLineStyle1,
                        ),
                        const Gap(5)
                      ],
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                              image: AssetImage('assets/images/img_1.png'))),
                    )
                  ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: const Color(0xFFF4f6FD)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      const Icon(FluentSystemIcons.ic_fluent_search_regular,
                          color: Color(0xFFBFC205)),
                      Text("Search", style: Styles.headLineStyle4,)
                    ],
                  ),
                ),
                const Gap(40),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Upcoming Flight", style: Styles.headLineStyle2,),
                    InkWell(
                      onTap: (){
                        print("Youre Tapped");
                    },
                      child: Text("View all", style: Styles.textStyle.copyWith(
                          color: Styles.primaryColor),),
                    )
                  ],
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            padding: const EdgeInsets.only(right: 20),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: ticketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList()
            ),
          ),
          const Gap(15),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Hotels", style: Styles.headLineStyle2,),
                InkWell(
                  onTap: (){
                    print("Youre Tapped");
                  },
                  child: Text("View all", style: Styles.textStyle.copyWith(
                      color: Styles.primaryColor),),
                )
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
              padding: const EdgeInsets.only(right: 20),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList()
              ))
        ],
      ),
    );
  }
}
