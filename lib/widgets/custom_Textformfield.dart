import 'package:flutter/material.dart';
import 'package:store_products/constants.dart';

class CustomTextformfield extends StatelessWidget {
  const CustomTextformfield({
    super.key,
    this.hint,
    this.icon,
    this.onchanged,
    this.vaildtion,
    this.obscuretext = false,
  });
  final String? hint;
  final IconButton? icon;
  final Function(String)? onchanged;
  final String? Function(String?)? vaildtion;
  final bool? obscuretext;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscuretext!,
      validator: vaildtion,
      cursorColor: kprimryColor,
      cursorHeight: 15,
      onChanged: onchanged,
      style: TextStyle(color: kprimryColor),
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: TextStyle(color: kprimryColor),
        suffixIcon: icon,
        fillColor: kwiteColor,
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: kwiteColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: kwiteColor),
        ),
      ),
    );
  }
}
