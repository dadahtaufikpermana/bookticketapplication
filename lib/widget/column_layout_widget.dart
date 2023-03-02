import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';
import '../utils/app_style.dart';

class ColumnLayoutWidget extends StatelessWidget {
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  final bool? isColor;
  const ColumnLayoutWidget({Key? key,
    required this.firstText,
    required this.secondText,
    required this.alignment, this.isColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(firstText,style: isColor==null?Styles.headLineStyle3.copyWith
          (color: Colors
            .white):Styles.headLineStyle3,),
        Gap(AppLayout.getHeight(5)),
        Text(secondText,style: isColor==null? Styles.headLineStyle4.copyWith
          (color: Colors.white):Styles.headLineStyle4,),
      ],
    );
  }
}
