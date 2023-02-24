import 'package:dollar_task_ziad_ali/features/upload/controller/cubit/upload_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/custom_elevated_button.dart';
import '../components/upload_screen_texts.dart';

class UploadScreen extends StatelessWidget {
  const UploadScreen({super.key});
  static const String routeName = '/upload-screen';
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UploadCubit(),
      child: Scaffold(
        body: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 21.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 172.h,
                  ),
                  SvgPicture.asset('assets/images/upload.svg'),
                  SizedBox(
                    height: 41.57.h,
                  ),
                  const UploadPageTexts(),
                  SizedBox(
                    height: 87.h,
                  ),
                  BlocConsumer<UploadCubit, UploadState>(
                    listener: (context, state) {
                      if (state is UploadSuccess) {
                        UploadCubit.get(context).loader(context);
                      }
                    },
                    builder: (context, state) {
                      UploadCubit cubit = UploadCubit.get(context);
                      return CustomElevatedButton(cubit: cubit);
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
