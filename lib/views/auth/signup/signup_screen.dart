import 'package:assesment_task/core/utils/constants/app_assets.dart';
import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:assesment_task/core/utils/constants/app_text_styles.dart';
import 'package:assesment_task/core/widgets/app_validator.dart';
import 'package:assesment_task/core/widgets/custom_button.dart';
import 'package:assesment_task/core/widgets/custom_gap.dart';
import 'package:assesment_task/core/widgets/custom_text_field.dart';
import 'package:assesment_task/core/widgets/triangle_painter.dart';
import 'package:assesment_task/core/widgets/unfocus_keyboard.dart';
import 'package:assesment_task/views/auth/widget/auth_header.dart';
import 'package:assesment_task/views/auth/widget/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _obscurePassword = true;
  bool _obscureConfirmPassword = true;

  late final TextEditingController _userNameController;
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;
  late final TextEditingController _confirmPasswordController;
  final GlobalKey<FormState> _formKeySignup = GlobalKey();
  bool passwordFieldInteracted = false;

  @override
  void initState() {
    _userNameController = TextEditingController();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _confirmPasswordController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _userNameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();

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
            key: _formKeySignup,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const AuthHeader(
                  icon: AppAssets.iconPerson,
                  title: 'SIGNUP',
                ),
                const Gap(20),
                CustomTextField(
                  labelText: 'Username',
                  textEditingController: _userNameController,
                  validator: AppValidator.isAlphabetic,
                ),
                const Gap(20),
                CustomTextField(
                  labelText: 'Email address',
                  textEditingController: _emailController,
                  validator: AppValidator.isEmptyValidator,
                ),
                const Gap(20),
                CustomTextField(
                  labelText: 'Password',
                  textEditingController: _passwordController,
                  obscureText: _obscurePassword,
                  validator: AppValidator.passwordValidator,
                  errorTextStyle:
                      const TextStyle(fontSize: 0, color: Colors.transparent),
                  onChange: (value) {
                    setState(() {
                      passwordFieldInteracted =
                          true; // Set to true when the user interacts with the password field
                    });
                    return null;
                  },
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
                if (passwordFieldInteracted &&
                    _isPasswordValid(_passwordController.text) != null)
                  passwordError(),
                const Gap(20),
                CustomTextField(
                  labelText: 'Confirm Password',
                  textEditingController: _confirmPasswordController,
                  obscureText: _obscureConfirmPassword,
                  validator: (String? value) {
                    return AppValidator.passwordMatchValidator(
                      _passwordController.text,
                      value,
                    );
                  },
                  suffix: IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureConfirmPassword = !_obscureConfirmPassword;
                      });
                    },
                    icon: Icon(
                      _obscureConfirmPassword
                          ? Icons.visibility_off
                          : Icons.visibility,
                    ),
                    color: AppColors.kTextGreyColor,
                    iconSize: 25.0,
                  ),
                ),
                const Gap(40),
                CustomButton(
                  onPressed: () {
                    onSignUpButtonClicked();
                  },
                  text: 'Signup',
                  width: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Visibility passwordError() {
    return Visibility(
      child: Transform.translate(
        offset: const Offset(100, -20),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  const Gap(20),
                  CustomPaint(
                    painter: TrianglePainter(
                      strokeColor: AppColors.kButtonGreyColor,
                      strokeWidth: 5,
                      paintingStyle: PaintingStyle.fill,
                    ),
                    child: const SizedBox(
                      height: 10,
                      width: 20,
                    ),
                  ),
                ],
              ),
              Container(
                width: 270,
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                decoration: BoxDecoration(
                  color: AppColors.kButtonGreyColor,
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: Row(children: [
                  Image.asset(
                    AppAssets.iconPasswordAlert,
                    height: 20,
                  ),
                  const Gap(5),
                  const Text(
                    'Password must be of 6 characters ',
                    style: AppTextStyles.kBodySmall,
                  )
                ]),
              )
            ]),
      ),
    );
  }

  // Outside the build method
  String? _isPasswordValid(String password) {
    return AppValidator.passwordValidator(password);
  }

  void onSignUpButtonClicked() {
    setState(() {
      passwordFieldInteracted = true;
    });

    if (_formKeySignup.currentState!.validate()) {
      showDialog(
        context: context,
        builder: (_) => const CustomDialog(
          title: 'Signup',
          subtitle: 'Account has been created successfully.',
        ),
      );
    }
  }
}
