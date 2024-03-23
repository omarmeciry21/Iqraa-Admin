import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_admin/core/utils/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.labelString,
  });

  final void Function()? onPressed;
  final String labelString;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        primary: FigmaColors.primary500,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.r),
        ),
        padding: EdgeInsets.symmetric(vertical: 12.h),
      ),
      child: Text(
        'Login',
        style: const FigmaTextStyles().headingH5.copyWith(
              color: Colors.white,
            ),
      ),
    );
  }
}
