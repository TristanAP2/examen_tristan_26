import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final bool obscureText;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField({super.key, this.hintText, this.labelText, this.helperText, this.icon, this.suffixIcon, required this.formProperty, required this.formValues, this.obscureText = false, });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        hintText: hintText,
        labelText: labelText,
        helperText: helperText,
        icon: Icon(icon),
        suffixIcon: Icon(suffixIcon),
      ),
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value!.length < 3) {
          return 'Minimo 3 caracteres';
        }
        else if (value.length > 20) {
          return 'Maximo 8 caracteres';
        }
      },
    );
  }
  
}