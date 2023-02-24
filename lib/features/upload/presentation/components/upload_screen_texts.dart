import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UploadPageTexts extends StatelessWidget {
  const UploadPageTexts({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Upload\nHistopathological image',
          textAlign: TextAlign.center,
          style: TextStyle(
              fontSize: 22.sp,
              fontWeight: FontWeight.w500,
              fontFamily: 'Roboto'),
        ),
        SizedBox(
          height: 16.h,
        ),
        Text(
          'You can upload the\nHistopathological Image on this\npage to see if there is a breast\ncancer or not.',
          textAlign: TextAlign.center,
          style: TextStyle(
              color: const Color(0xff121212).withOpacity(0.6),
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              fontFamily: 'Inter'),
        ),
      ],
    );
  }
}
