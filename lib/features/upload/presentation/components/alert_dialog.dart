import 'dart:io';

import 'package:dollar_task_ziad_ali/features/upload/presentation/components/divider_sliding_animation.dart';
import 'package:dollar_task_ziad_ali/features/upload/presentation/components/text_sliding_animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utilis/constants.dart';

class CustomDialog extends StatefulWidget {
  const CustomDialog({
    super.key,
    required this.image,
  });

  final File? image;

  @override
  State<CustomDialog> createState() => _CustomDialogState();
}

class _CustomDialogState extends State<CustomDialog>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> sliderAnimation;
  late Animation<Offset> dividerSliderAnimation;
  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
  }

  void initSlidingAnimation() {
    animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 700));
    sliderAnimation =
        Tween<Offset>(begin: const Offset(0, 1), end: const Offset(0, 0))
            .animate(animationController);
    dividerSliderAnimation =
        Tween<Offset>(begin: const Offset(-0.5, 0), end: const Offset(0, 0))
            .animate(animationController);
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r)),
      contentPadding: EdgeInsets.all(30.w),
      content: SizedBox(
        height: 366.h,
        width: 280.w,
        child: Column(
          children: [
            SizedBox(
              height: 43.h,
            ),
            Image.file(
              widget.image!,
              width: 181.w,
              height: 118.h,
              fit: BoxFit.cover,
            ),
            DividerSlidingAnimation(sliderAnimation: dividerSliderAnimation),
            SizedBox(
              height: 38.h,
            ),
            Text(
              'The Result is:',
              style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400),
            ),
            SlidingAnimation(sliderAnimation: sliderAnimation),
            SizedBox(height: 50.h),
            Row(
              children: [
                const Spacer(),
                TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: AppConstants.malignantColor,
                          fontSize: 15.sp),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
