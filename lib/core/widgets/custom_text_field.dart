import 'package:assesment_task/core/utils/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.textEditingController,
    this.hintText,
    this.suffix,
    this.obscureText = false,
    this.textInputType,
    this.borderRadius,
    this.onFieldTap,
    this.readOnly = false,
    this.hintColor,
    this.labelColor,
    this.labelText,
    this.maxLength,
    this.validator,
    this.inputFormate,
    this.fillColor,
    this.prefix,
    this.minLines,
    this.maxLines = 1,
    this.filled,
    this.onChange,
    this.errorTextStyle,
  }) : super(key: key);

  final TextEditingController? textEditingController;
  final String? hintText;
  final String? labelText;
  final Widget? suffix;
  final String? prefix;
  final bool obscureText;
  final TextInputType? textInputType;
  final BorderRadius? borderRadius;
  final VoidCallback? onFieldTap;
  final bool readOnly;
  final Color? hintColor;
  final Color? labelColor;
  final int? maxLength;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChange;
  final List<TextInputFormatter>? inputFormate;
  final Color? fillColor;
  final bool? filled;
  final int? minLines;
  final int? maxLines;
  final TextStyle? errorTextStyle;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(labelText ?? ""),
        TextFormField(
          controller: textEditingController,
          keyboardType: textInputType,
          obscureText: obscureText,
          inputFormatters: inputFormate,
          onTap: onFieldTap,
          maxLength: maxLength,
          readOnly: readOnly,
          minLines: minLines,
          maxLines: maxLines,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: InputDecoration(
              errorStyle: errorTextStyle ??
                  const TextStyle(
                    color: AppColors.kTextErrorColor,
                    fontSize: 14.0,
                    fontWeight: FontWeight.w400,
                  ),
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.kBorderColor,
                  width: 1.0,
                ),
                borderRadius: borderRadius ??
                    const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: AppColors.kBorderColor,
                ),
                borderRadius: borderRadius ??
                    const BorderRadius.all(
                      Radius.circular(30.0),
                    ),
              ),
              hintText: hintText,
              errorMaxLines: 2,
              hintStyle: TextStyle(
                color: hintColor ?? AppColors.kTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              labelStyle: TextStyle(
                color: labelColor ?? hintColor ?? AppColors.kTextColor,
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
              ),
              prefixStyle:
                  const TextStyle(color: AppColors.kTextColor, fontSize: 15),
              counterText: '',
              isDense: true,
              suffixIcon: suffix,
              prefixText: prefix,
              filled: filled,
              fillColor: fillColor),
          validator: validator,
          onChanged: onChange,
        ),
      ],
    );
  }
}
