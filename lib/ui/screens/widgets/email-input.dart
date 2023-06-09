import 'package:final_app/palette.dart';
import 'package:final_app/utils/colors.dart';
import 'package:flutter/material.dart';

class EmailInput extends StatelessWidget {
  const EmailInput({
    Key? key,
    required this.icon,
    required this.hint,
    required this.inputType,
    required this.inputAction,
  }) : super(key: key);

  final IconData icon;
  final String hint;
  final TextInputType inputType;
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
        style: kBodyText,
        keyboardType: inputType,
        textInputAction: inputAction,
      ),
    );
  }
}
