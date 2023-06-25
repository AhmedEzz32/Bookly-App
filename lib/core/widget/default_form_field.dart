import 'package:flutter/material.dart';

class DefaultFormField extends StatelessWidget {
  const DefaultFormField({
    Key? key,
    this.onSubmit,
    this.isClickable = true,
    required this.controller,
    required this.type,
    required this.validate,
    required this.label,
    this.onChange,
    required this.prefix,
    this.isPassword = false,
    this.suffix,
    this.suffixPressed,
    this.onTap,
  }) : super(key: key);

  final TextEditingController controller;
  final TextInputType type;
  final dynamic onSubmit;
  final Function(String?)? onChange;
  final dynamic onTap;
  final dynamic validate;
  final String label;
  final IconData prefix;
  final bool isPassword;
  final IconData? suffix;
  final Function()? suffixPressed;
  final bool isClickable;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onFieldSubmitted: onSubmit,
      onChanged: onChange,
      validator: validate,
      onTap: onTap,
      enabled: isClickable,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        prefixIcon: Icon(
          prefix,
          color: Colors.white,
        ),
      ),
    );
  }
}
