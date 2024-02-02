import 'package:credit_card_form/credit_card_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputWidget extends StatelessWidget {
  final String hintText;

  final CreditCardTheme theme;
  final double left;
  final double right;
  final double bottom;
  final double top;
  final List<TextInputFormatter>? formatters;
  final TextInputType? keyboardType;
  final bool? password;
  final Function(String)? onChanged;
  final Widget? suffixIcon;
  final TextEditingController? controller;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final String? labelText;

  const TextInputWidget({
    super.key,
    required this.hintText,
    required this.theme,
    required this.onChanged,
    this.formatters,
    this.keyboardType,
    this.password,
    this.suffixIcon,
    this.controller,
    this.bottom = 0,
    this.left = 0,
    this.right = 0,
    this.top = 0,
    this.floatingLabelBehavior,
    this.labelText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(
            color: left > 0 ? theme.borderColor : Colors.transparent,
            width: left,
          ),
          right: BorderSide(
            color: right > 0 ? theme.borderColor : Colors.transparent,
            width: right,
          ),
          top: BorderSide(
            color: top > 0 ? theme.borderColor : Colors.transparent,
            width: top,
          ),
          bottom: BorderSide(
            color: bottom > 0 ? theme.borderColor : Colors.transparent,
            width: bottom,
          ),
        ),
      ),
      child: TextField(
        controller: controller,
        style: theme.textStyle,
        onChanged: onChanged,
        obscureText: password ?? false,
        inputFormatters: formatters ?? [],
        keyboardType: keyboardType ?? TextInputType.number,
        decoration: InputDecoration(
          floatingLabelBehavior: floatingLabelBehavior,
          floatingLabelStyle: theme.floatingLabelStyle,
          suffixIcon: suffixIcon,
          contentPadding: const EdgeInsets.all(15),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: theme.hintStyle,
          labelText: labelText,
        ),
      ),
    );
  }
}
