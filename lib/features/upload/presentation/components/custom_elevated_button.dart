import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utilis/constants.dart';
import '../../controller/cubit/upload_cubit.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({
    super.key,
    required this.cubit,
  });

  final UploadCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            elevation: const MaterialStatePropertyAll(0),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25.r))),
            backgroundColor:
                const MaterialStatePropertyAll(AppConstants.primaryColor),
            maximumSize: MaterialStatePropertyAll(Size(232.w, 44.h))),
        onPressed: () {
          cubit.imagePicker(context);
        },
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset('assets/images/sky.svg'),
              SizedBox(
                width: 8.w,
              ),
              const Text(
                'Upload',
                style: TextStyle(
                    fontFamily: 'Roboto', fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}
