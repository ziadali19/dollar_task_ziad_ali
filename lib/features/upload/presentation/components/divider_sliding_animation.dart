import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utilis/constants.dart';

class DividerSlidingAnimation extends StatelessWidget {
  const DividerSlidingAnimation({
    Key? key,
    required this.sliderAnimation,
  }) : super(key: key);

  final Animation<Offset> sliderAnimation;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      builder: (BuildContext context, Widget? child) {
        return SlideTransition(
            position: sliderAnimation,
            child: Container(
              width: 181.w,
              height: 3.h,
              color: AppConstants.benginColor,
            ));
      },
      animation: sliderAnimation,
    );
  }
}
