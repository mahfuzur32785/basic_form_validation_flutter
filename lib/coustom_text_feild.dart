import 'package:flutter/material.dart';

class CoustomTextFormFeild extends StatelessWidget {
  CoustomTextFormFeild(
      {Key? key,
      this.controller,
      this.suffixIcon,
      this.prefixIcon,
      this.labelText,
      this.hintText,
      this.validator})
      : super(key: key);

  TextEditingController? controller;
  dynamic validator;
  String? hintText;
  String? labelText;
  IconData? prefixIcon;
  IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 1, style: BorderStyle.solid),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 1, style: BorderStyle.solid),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 1, style: BorderStyle.solid),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: Colors.black, width: 1, style: BorderStyle.solid),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: Color(0xFF8599B7),
        ),
        fillColor: Color(0xFF3F5776),
        filled: true,
        prefixIcon: Container(
          margin: EdgeInsets.only(right: 20),
          height: 60,
          width: 60,
          color: Color(0xFF0F3551),
          child: Icon(
            prefixIcon,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
