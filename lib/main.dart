import 'package:easy_localization/easy_localization.dart';
import 'package:evently_app_new/config/routes.dart';
import 'package:evently_app_new/core/utils/app_theme.dart';
import 'package:evently_app_new/feature/auth/login/ui/login_screen.dart';
import 'package:evently_app_new/feature/auth/register/ui/register_screen.dart';
import 'package:evently_app_new/feature/onboarding/first_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

import 'core/providers/theme_provider.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  await ScreenUtil.ensureScreenSize();

  runApp(

    EasyLocalization(
      supportedLocales: [Locale('en'), Locale('ar')],
      path: 'assets/translations', // <-- change the path of the translation files
      fallbackLocale: Locale('en'),

      child: ChangeNotifierProvider(
        create:  (_) => ThemeProvider(),
          child: MyApp())
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 793),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          theme: AppTheme.lightTheme,
          darkTheme: AppTheme.darkTheme,
          themeMode: ThemeMode.light
          // Provider.of<ThemeProvider>(context).themeMode,
          ,initialRoute: Routes.login,
          routes: {
            Routes.firstScreen: (context) => FirstScreen(),
            Routes.register: (context) => RegisterScreen(),
            Routes.login: (context) => LoginScreen(),
          },
        );
      },
    );

  }
}
