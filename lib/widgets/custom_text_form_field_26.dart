import 'package:examen_tristan_26/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  
  final String? hintText;
  final String? labelText;
  final String? helperText;
  final IconData? icon;
  final IconData? suffixIcon;
  final TextInputType? keyboardType;
  final bool obscureText;
  final TextCapitalization textCapitalization;

  final String formProperty;
  final Map<String, String> formValues;

  const CustomTextFormField({
    Key? key, 
    this.hintText, 
    this.labelText, 
    this.helperText, 
    this.icon, 
    this.suffixIcon, 
    this.keyboardType, 
    this.obscureText = false, 
    this.textCapitalization = TextCapitalization.words, 
    required this.formProperty, 
    required this.formValues,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
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
        if (formProperty == 'password2') {
              if (value != formValues['password1']) {
                 return 'Las contrasenas no son las misma';
              }
          }
      },
    );
  }

}