import 'package:flutter/material.dart';

class CustomAuthTextField extends StatelessWidget {
  final TextInputType keyBoardType;
  final TextEditingController controller;
  final Widget? preFixIcon;
  final String? Function(String?)? validatorFunction;
  final String label;
  final Widget? suffixIcon;
  final bool isObscured;
  const CustomAuthTextField(
      {super.key,
      required this.keyBoardType,
      required this.controller,
      this.preFixIcon,
      this.validatorFunction,
      required this.label,
      this.suffixIcon,
      required this.isObscured});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscured,
      keyboardType: keyBoardType,
      controller: controller,
      decoration: InputDecoration(
          suffixIcon: suffixIcon,
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 24),
          // filled: true,
          prefixIcon: preFixIcon,
          labelText: label,
          labelStyle: TextStyle(
            fontSize: 14,
            color: Colors.lightBlue,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide(
              color: Colors.lightBlue,
              width: 2,
            ),
          )),
      validator: validatorFunction,
    );
  }
}
