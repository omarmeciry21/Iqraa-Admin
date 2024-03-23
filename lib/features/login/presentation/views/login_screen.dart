import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:iqraa_admin/core/app_router.dart';
import 'package:iqraa_admin/core/components/custom_button.dart';
import 'package:iqraa_admin/core/components/custom_text_form_field.dart';
import 'package:iqraa_admin/core/utils/styles.dart';
import 'package:iqraa_admin/features/login/presentation/manager/login_cubit.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:string_validator/string_validator.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final usernameController = TextEditingController();

  final passwordController = TextEditingController();

  bool isPasswordShown = false;
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          GoRouter.of(context).push(AppRouter.kHomeView);
        } else if (state is LoginError) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.message),
              backgroundColor: FigmaColors.othersRed,
            ),
          );
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: state is LoginLoading,
          child: Scaffold(
            backgroundColor: Colors.white,
            body: SafeArea(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0.w),
                child: Form(
                  key: _formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'Welcome Back 👋',
                        style: const FigmaTextStyles().headingH3,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        'Sign to your account',
                        style: const FigmaTextStyles().body16Regular,
                      ),
                      SizedBox(height: 24.h),
                      Text(
                        'Username',
                        style: const FigmaTextStyles().body14Medium,
                      ),
                      SizedBox(height: 8.h),
                      CustomTextFormField(
                        controller: usernameController,
                        hintText: 'Your Username',
                        validator: (val) {
                          return val != null && val.isEmpty ? '' : null;
                        },
                      ),
                      SizedBox(height: 16.h),
                      Text(
                        'Password',
                        style: const FigmaTextStyles().body14Medium,
                      ),
                      SizedBox(height: 8.h),
                      CustomTextFormField(
                        controller: passwordController,
                        hintText: 'Your password',
                        obscureText: !isPasswordShown,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isPasswordShown = !isPasswordShown;
                            });
                          },
                          child: Icon(
                            !isPasswordShown
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: !isPasswordShown
                                ? FigmaColors.gray400
                                : FigmaColors.primary500,
                            size: 20.sp,
                          ),
                        ),
                        validator: (val) {
                          return val != null && val.length < 6 ? '' : null;
                        },
                      ),
                      SizedBox(height: 24.h),
                      CustomButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            BlocProvider.of<LoginCubit>(context).login(
                                usernameController.text,
                                passwordController.text);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: const Text(
                                    'Please enter valid username and password!'),
                                backgroundColor: FigmaColors.othersRed,
                              ),
                            );
                          }
                        },
                        labelString: 'Login',
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
