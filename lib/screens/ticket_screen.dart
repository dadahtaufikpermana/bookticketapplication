import 'package:barcode_widget/barcode_widget.dart';
import 'package:bookticketapplication/screens/ticket_view.dart';
import 'package:bookticketapplication/utils/app_info_list.dart';
import 'package:bookticketapplication/utils/app_layout.dart';
import 'package:bookticketapplication/utils/app_style.dart';
import 'package:bookticketapplication/widget/layoutBuilderWidget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../widget/addTabs.dart';
import '../widget/column_layout_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),
              vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text("Tickets", style: Styles.headLineStyle1,),
            Gap(AppLayout.getHeight(20)),
            AddTabs(firstTab: "Upcoming", secondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],isColor: true,),
            ),
            SizedBox(height: 1,),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
              color: Colors.white,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayoutWidget(
                        firstText: 'Flutter DB',
                        secondText: 'Passenger',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayoutWidget(
                        firstText: '5221 364869',
                        secondText: 'Passport',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  Gap(AppLayout.getHeight(20)),
                  const LayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      ColumnLayoutWidget(
                        firstText: '0055 444 77147',
                        secondText: 'Number of E-ticket',
                        alignment: CrossAxisAlignment.start,
                        isColor: false,
                      ),
                      ColumnLayoutWidget(
                        firstText: 'B2SG28',
                        secondText: 'Booking Code',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),
                    ],
                  ),
                  const LayoutBuilderWidget(sections: 15,isColor: false,width: 5,),
                  Gap(AppLayout.getHeight(20)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset("assets/images/visa.png",scale: 11,),
                              Text(" *** 2462" , style: Styles.headLineStyle3,)
                            ],
                          ),
                          Gap(5),
                          Text("Payment method",style: Styles.headLineStyle4,),
                        ],
                      ),
                      const ColumnLayoutWidget(
                        firstText: '\$249.99',
                        secondText: 'Price',
                        alignment: CrossAxisAlignment.end,
                        isColor: false,
                      ),

                    ],
                  ),
                  const SizedBox(height: 1,),

                ],
              ),
            ),
            /*
            barcode
             */
            SizedBox(height: 1,),
            Container(
              decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(AppLayout.getHeight(21)),
                      bottomLeft: Radius.circular(AppLayout.getHeight(21))
                  )
              ),
              margin: EdgeInsets.only(left: AppLayout.getHeight(15), right:
              AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(20),bottom:
              AppLayout.getHeight(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/martinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    width: double.infinity,
                    height: 70,

                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: ticketList[0],),
            ),
          ],
        ),
        Positioned(
          left: AppLayout.getHeight(19),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: AppLayout.getHeight(19),
          top: AppLayout.getHeight(295),
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)
            ),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}