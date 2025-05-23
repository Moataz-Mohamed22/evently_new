import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/core/components/custom_text_filed.dart';
import 'package:evently_app_new/core/utils/app_Strings.dart';
import 'package:evently_app_new/core/utils/app_assets.dart';
import 'package:evently_app_new/feature/auth/register/widget/button_and_already_have_account.dart';
import 'package:evently_app_new/feature/auth/register/widget/toggle_register.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  late TextEditingController name;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController rePassword;
  late GlobalKey<FormState> _formKey;

  @override
  void initState() {
    super.initState();
    name = TextEditingController();
    email = TextEditingController();
    password = TextEditingController();
    rePassword = TextEditingController();
    _formKey = GlobalKey<FormState>();
  }

  @override
  void dispose() {
    name.dispose();
    email.dispose();
    password.dispose();
    rePassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
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
                    AppAssets.nameIcon,
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: AppStrings.name.tr(),
                  controller: name,
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
                CustomTextFiled(
                  prefixIcon: SvgPicture.asset(
                    AppAssets.passwordIcon,
                    width: 24.w,
                    height: 24.h,
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: AppStrings.rePassword.tr(),
                  controller: rePassword,
                  obscureText: true,
                ),
                const ButtonAndAlreadyHaveAccount(),
                const Center(child: ToggleRegister()),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
