import 'dart:io';

import 'package:dollar_task_ziad_ali/core/utilis/constants.dart';
import 'package:dollar_task_ziad_ali/features/upload/presentation/components/alert_dialog.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'upload_state.dart';

class UploadCubit extends Cubit<UploadState> {
  UploadCubit() : super(UploadInitial());
  static UploadCubit get(context) {
    return BlocProvider.of(context);
  }

  File? image;
  imagePicker(context) async {
    emit(UploadLoading());
    image = await AppConstants.imagePicker(context);
    emit(UploadSuccess());
  }

  loader(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return Image.asset('assets/images/Processing icon.gif');
      },
    ).timeout(const Duration(seconds: 3), onTimeout: () {
      Navigator.pop(context);
      alertdialog(context);
    });
  }

  alertdialog(BuildContext context) {
    final CustomDialog alert = CustomDialog(image: image);
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return alert;
        });
  }
}
