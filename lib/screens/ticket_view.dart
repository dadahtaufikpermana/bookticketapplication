import 'package:bookticketapplication/utils/app_layout.dart';
import 'package:bookticketapplication/utils/app_style.dart';
import 'package:bookticketapplication/widget/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  final Map<String, dynamic>ticket;
  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(150),

      child: Container(
        decoration: BoxDecoration(
            color: const Color(0xFF526799),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(21), topRight: Radius.circular(21))),
        margin: EdgeInsets.only(left: AppLayout.getHeight(16)),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        ticket['from']['code'],
                        style:
                        Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      Expanded(child: Container()),
                      ThickContainer(),
                      Expanded(child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context,
                                  BoxConstraints constraints) {
                                print("This width is ${constraints
                                    .constrainWidth()}");
                                return Flex(
                                    direction: Axis.horizontal,
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: List.generate((constraints.constrainWidth() /
                                        6).floor(),
                                            (index) => const SizedBox(
                                          width: 3,
                                          height: 1,
                                          child: DecoratedBox(
                                            decoration: BoxDecoration(
                                                color: Colors.white),
                                          ),
                                        )

                                    ));
                              },
                            ),
                          ),
                          Center(child: Transform.rotate(angle: 1.5, child: Icon(Icons.local_airport_rounded, color: Colors.white,),)),
                        ]
                      ),),
                      ThickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "London",
                        style: Styles.headLineStyle3.copyWith(
                            color: Colors.white),
                      )
                    ],
                  ),
                  const Gap(1),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100, child: Text("New-York", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ),
                      Text("8H 30M", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                      SizedBox(
                        width: 100, child: Text("LDN", style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              color: const Color(0xFFF37B67),
              child: Row(children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topRight: Radius.circular(10),
                            bottomRight: Radius.circular(10)
                        )
                    ),
                  ),
                ),
                    Expanded(child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: LayoutBuilder(
                        builder: (BuildContext context , BoxConstraints constraints) {
                          return Flex(
                              direction: Axis.horizontal,
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: List.generate((constraints.constrainWidth() /
                                  15).floor(),
                                      (index) => const SizedBox(
                                    width: 5,
                                    height: 1,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: Colors.white),
                                    ),
                                  )

                              ));
                        },
                      ),
                    )),
                Container(
                  height: AppLayout.getHeight(20),
                  width: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            bottomLeft: Radius.circular(10)
                        )
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Styles.orangeColor,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21))
                  ),
                  padding: const EdgeInsets.only(left: 16, top: 10, right: 16,
                  bottom: 16),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("1 May",style: Styles.headLineStyle3.copyWith(color : Colors.white),),
                              const Gap(5),
                              Text("Date",style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text("08.AM",style: Styles.headLineStyle3.copyWith(color : Colors.white),),
                              const Gap(5),
                              Text("Departure Time",style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("23",style: Styles.headLineStyle3.copyWith(color : Colors.white),),
                              const Gap(5),
                              Text("Number",style: Styles.headLineStyle4.copyWith(color: Colors.white),)
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],),
            )
          ],
        ),
      ),
    );
  }
}
