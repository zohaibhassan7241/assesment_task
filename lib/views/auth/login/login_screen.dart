import 'package:assesment_task/core/router/router_constants.dart';
import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/app_validator.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/core/widgets/custom_text_field.dart';
import 'package:assesment_task/core/widgets/unfocus_keyboard.dart';
import 'package:assesment_task/views/auth/login/widget/login_signup_divider.dart';
import 'package:assesment_task/views/auth/login/widget/remember_me.dart';
import 'package:assesment_task/views/auth/login/widget/social_auth_row.dart';
import 'package:assesment_task/views/auth/widget/auth_header.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _obscurePassword = true;
  late final TextEditingController _userNameController;
  late final TextEditingController _passwordController;

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    _userNameController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return UnfocusKeyboard(
      child: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          width: double.infinity,
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AuthHeader(
                  icon: AppAssets.iconPerson,
                  title: 'LOGIN',
                ),
                const Gap(20),
                CustomTextField(
                  labelText: 'Email/Username',
                  textEditingController: _userNameController,
                  validator: AppValidator.isAlphabetic,
                ),
                const Gap(20),
                CustomTextField(
                  labelText: 'Password',
                  textEditingController: _passwordController,
                  validator: AppValidator.passwordValidator,
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscurePassword = !_obscurePassword;
                      });
                    },
                    icon: Icon(
                      _obscurePassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    color: AppColors.kTextGreyColor,
                    iconSize: 25.0,
                  ),
                ),
                const Gap(5),
                const RememberMe(),
                const Gap(40),
                CustomButton(
                  onPressed: () => onLoginButtonClicked(context),
                  text: 'Login',
                  width: double.infinity,
                ),
                const Gap(5),
                Align(
                  alignment: Alignment.bottomRight,
                  child: InkWell(
                    onTap: () {
                      context.push(Routes.forgetPage);
                    },
                    child: Text(
                      "Forgot password?",
                      style: AppTextStyles.kBodyMedium.copyWith(
                        color: AppColors.kTextLightGreyColor,
                      ),
                    ),
                  ),
                ),
                const Gap(30),
                const LoginSignupDivider(
                  title: "OR",
                ),
                const Gap(30),
                const SocialAuthRow(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void onLoginButtonClicked(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      context.go(Routes.homePage);
    }
  }
}
