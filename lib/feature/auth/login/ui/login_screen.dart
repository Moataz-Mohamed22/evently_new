import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/components/custom_text_filed.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:evently_app_new/core/utils/app_assets.dart';
import 'package:evently_app_new/feature/auth/login/widget/button_dont_have_.dart';
import 'package:evently_app_new/feature/auth/login/widget/google_button.dart';
import 'package:evently_app_new/feature/auth/login/widget/or_text.dart';
import 'package:evently_app_new/feature/auth/register/widget/toggle_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late TextEditingController email ;
  late TextEditingController password ;
  late GlobalKey<FormState> _formKey ;


@override
  void initState() {
    super.initState();
    email = TextEditingController();
    password = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }
  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all(24.r),
                  child: Center(
                    child: Image.asset(
                      AppAssets.logo2,
                      width: 136.w,
                      height: 141.h,
                      alignment: Alignment.center,
                    ),
                  ),
                ),
                CustomTextFiled(
                  prefixIcon: SvgPicture.asset(
                    AppAssets.emailIcon,
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: AppStrings.email.tr(),
                  controller: email,
                ),
                CustomTextFiled(
                  prefixIcon: SvgPicture.asset(
                    AppAssets.passwordIcon,
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: AppStrings.password.tr(),
                  controller: password,
                  obscureText: true,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      AppStrings.forgetPassword.tr(),
                      style: Theme.of(context).textTheme.headlineMedium,
                    ),
                  ),
                ),
                const ButtonDontHave(),
                SizedBox(height: 24.h),
                const OrText(),
                SizedBox(height: 24.h),
                const GoogleButton(),
                const Center(child: ToggleRegister()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

