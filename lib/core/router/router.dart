import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/widgets/not_found_page.dart';
import 'package:assesment_task/views/auth/forget_password/forget_password_screen.dart';
import 'package:assesment_task/views/auth/login/login_screen.dart';
import 'package:assesment_task/views/auth/otp/otp_screen.dart';
import 'package:assesment_task/views/auth/reset_password/reset_password_screen.dart';
import 'package:assesment_task/views/auth/signup/signup_screen.dart';
import 'package:assesment_task/views/create/create_screen.dart';
import 'package:assesment_task/views/home/home_screen.dart';
import 'package:assesment_task/views/home/main_screen.dart';
import 'package:assesment_task/views/home/navigatation_cubit/navigation_cubit.dart';
import 'package:assesment_task/views/profile/profile_screen.dart';
import 'package:assesment_task/views/splash/splash_screen.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _shellNavigatorKey = GlobalKey<NavigatorState>();
  static GoRouter router = GoRouter(
    debugLogDiagnostics: kDebugMode,
    navigatorKey: _rootNavigatorKey,
    initialLocation: Routes.splashRoot,
    routes: [
      ShellRoute(
        navigatorKey: _shellNavigatorKey,
        builder: (context, state, child) {
          return BlocProvider(
            create: (context) => NavigationCubit(),
            child: MainScreen(screen: child),
          );
        },
        routes: [
          GoRoute(
            path: Routes.homePage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: HomeScreen(),
            ),
          ),
          GoRoute(
            path: Routes.createPage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: CreateScreen(),
            ),
          ),
          GoRoute(
            path: Routes.profilePage,
            pageBuilder: (context, state) => const NoTransitionPage(
              child: ProfileScreen(),
            ),
          ),
        ],
      ),
      GoRoute(
        path: Routes.splashRoot,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SplashScreen(),
        ),
      ),

      /* ------------------------------ Login Screen ------------------------------ */
      GoRoute(
        path: Routes.loginPage,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: LoginScreen(),
        ),
      ),
      /* ------------------------------ Sign up Screen ------------------------------ */
      GoRoute(
        path: Routes.signUpPgae,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: SignUpScreen(),
        ),
      ),
      /* ------------------------------ Forget Password Screen ------------------------------ */
      GoRoute(
        path: Routes.forgetPage,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ForgetPasswordScreen(),
        ),
      ),
      /* ------------------------------ Otp  Screen ------------------------------ */
      GoRoute(
        path: Routes.otpPage,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: OTPScreen(),
        ),
      ),
      /* ------------------------------ Reset Password Screen ------------------------------ */
      GoRoute(
        path: Routes.resetPage,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: ResetPasswordScreen(),
        ),
      ),

      /* ------------------------------ Reset Password Screen ------------------------------ */
      GoRoute(
        path: Routes.homePage,
        pageBuilder: (context, state) => const NoTransitionPage(
          child: HomeScreen(),
        ),
      ),
    ],
    errorBuilder: (context, state) => const NotFoundScreen(),
  );
}
