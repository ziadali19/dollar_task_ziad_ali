import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CentreLogo extends StatelessWidget {
  const CentreLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/images/1.svg',
          width: 79.12.w,
          height: 80.73.h,
        ),
        SizedBox(
          height: 24.27.h,
        ),
        Text(
          'AI-BASED CACD',
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
              color: Colors.white,
              fontSize: 27.sp),
        ),
        Text(
          'Breast Cancer Detiction',
          style: TextStyle(
              fontFamily: 'Inter',
              fontWeight: FontWeight.w500,
              color: Colors.white,
              fontSize: 15.sp),
        ),
      ],
    );
  }
}
