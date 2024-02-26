import 'package:assesment_task/core/widgets/not_found_page.dart';
import 'package:flutter/material.dart';

class Routes {
  static const splashRoot = '/';
  static const loginPage = '/login';
  static const forgetPage = '/forget';
  static const signUpPgae = '/signup';
  static const otpPage = '/otp';
  static const resetPage = '/reset';
  static const homePage = '/home';
  static const profilePage = '/profile';
  static const createPage = '/create';

  static Widget errorWidget(BuildContext context, state) =>
      const NotFoundScreen();
}
