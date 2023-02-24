import 'dart:io';

import 'package:dollar_task_ziad_ali/features/upload/presentation/screens/upload_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';
import 'package:image_picker/image_picker.dart';

class AppConstants {
  static const Color primaryColor = Color(0xffFF4572);
  static const Color secondaryColor = Color(0xff121212);
  static const Color benginColor = Color(0xff00FF00);
  static const Color malignantColor = Color(0xffFF0000);
  static Future<File?>? imagePicker(context) async {
    File? image;
    try {
      final XFile? pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);

      if (pickedFile != null) {
        image = File(pickedFile.path);
      }
    } catch (e) {
      AppConstants.showSnackBar(e.toString(), context, Colors.red);
    }
    return image;
  }

  static showSnackBar(String? msg, BuildContext context, Color? clr) {
    showToast(
      msg,
      context: context,
      backgroundColor: clr,
      animation: StyledToastAnimation.slideFromTopFade,
      reverseAnimation: StyledToastAnimation.fade,
      position:
          const StyledToastPosition(align: Alignment.bottomCenter, offset: 70),
      animDuration: const Duration(seconds: 1),
      duration: const Duration(seconds: 4),
      curve: Curves.bounceOut,
      reverseCurve: Curves.linear,
    );
  }

  static onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case UploadScreen.routeName:
        return MaterialPageRoute(
          builder: (context) => const UploadScreen(),
        );

      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(),
        );
    }
  }
}
