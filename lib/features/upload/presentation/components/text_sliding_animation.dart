import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utilis/constants.dart';

class SlidingAnimation extends StatelessWidget {
  const SlidingAnimation({
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
            child: Text(
              'Bengin',
              style: TextStyle(
                  color: AppConstants.benginColor,
                  fontSize: 32.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600),
            ));
      },
      animation: sliderAnimation,
    );
  }
}
