import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LayoutBuilderWidget extends StatelessWidget {
  final bool? isColor;
  final int sections;
  final int width;
  const LayoutBuilderWidget({Key? key, this.isColor, required this.sections, this.width=3}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context,
          BoxConstraints constraints) {
        print(
            "The width is ${constraints.constrainWidth()}");
        return Flex(
          direction: Axis.horizontal,
          mainAxisAlignment:
          MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          children: List.generate(
              (constraints.constrainWidth() / 6)
                  .floor(),
                  (index) =>  SizedBox(
                width: 3,
                height: 1,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                      color: isColor==null? Colors
                          .white:Colors.grey
                          .shade300),
                ),
              )),
        );
      },
    );
  }
}