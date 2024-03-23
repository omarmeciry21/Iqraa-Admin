import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iqraa_admin/core/utils/styles.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.obscureText,
    this.suffixIcon,
  });

  final TextEditingController controller;
  final String? Function(String?)? validator;
  final String hintText;
  final bool? obscureText;
  final Widget? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.r),
        color: FigmaColors.gray50,
      ),
      child: TextFormField(
        controller: controller,
        style: const FigmaTextStyles().body16Regular,
        obscureText: obscureText ?? false,
        validator: validator,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: const FigmaTextStyles().body16Regular.copyWith(
                color: FigmaColors.gray400,
              ),
          errorStyle: const FigmaTextStyles()
              .body14Regular
              .copyWith(color: FigmaColors.othersRed, fontSize: 0.0),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide.none,
          ),
          contentPadding:
              EdgeInsets.symmetric(horizontal: 16.w, vertical: 12.h),
          suffixIcon: suffixIcon,
        ),
      ),
    );
  }
}
