import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hinttext;
  String? Function(String?)? validate;
  Widget icon;
  int? maxlines;
  bool? isPassword;
  bool? check;
  bool? enable;
  CustomTextField({
    Key? key,
    required this.controller,
    required this.hinttext,
    required this.icon,
    this.check,
    this.isPassword,
    this.enable,
    this.validate,
    this.maxlines,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      enabled: enable == true ? true : enable,
      maxLines: maxlines == null ? 1 : maxlines,
      controller: controller,
      validator: validate,
      obscureText: isPassword == false ? false : isPassword!,
      decoration: InputDecoration(
        suffixIcon: icon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(
            color: Colors.black,
            width: 0,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.transparent, width: 0),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        filled: true,
        fillColor: Color(0xffF5F6FA),
        hintText: hinttext,
        hintStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
      ),
    );
  }
}
