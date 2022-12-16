import 'package:examen_tristan_26/theme/app_theme.dart';
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
        iconColor: AppTheme.primary,
        suffixIcon: Icon(suffixIcon),
        suffixIconColor: AppTheme.primary,
      ),
      obscureText: obscureText,
      onChanged: (value) => formValues[formProperty] = value,
      validator: (value) {
        if (value!.length < 6) {
          return 'Minimo 6 caracteres';
        }
        else if (value.length > 20) {
          return 'Maximo 20 caracteres';
        }
      },
    );
  }
  
}