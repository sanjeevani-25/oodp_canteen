import 'package:final_app/palette.dart';
import 'package:final_app/utils/colors.dart';
import 'package:flutter/material.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputAction inputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 32,
      decoration: BoxDecoration(
          color: AppColors.bgcolor40percent,
          borderRadius: BorderRadius.circular(10)),
      child: TextFormField(
        decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(vertical: 2),
            border: InputBorder.none,
            hintText: hint,
            prefixIcon: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Icon(
                icon,
                color: AppColors.textColor,
                size: 14,
              ),
            ),
            hintStyle: kBodyText),
        obscureText: true,
        textInputAction: inputAction,
      ),
    );
  }
}
