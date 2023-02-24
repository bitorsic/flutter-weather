import 'dart:ffi';

import 'package:flutter/material.dart';
import '../Constants.dart' as constant;


class textfield extends StatelessWidget {
  final String text;
  final bool isPassword;
  const textfield({
    super.key, required this.text, required this.isPassword,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        style: TextStyle(color: constant.textSecondary),
        obscureText: isPassword,
        decoration: InputDecoration(
          hintText: text,
          hintStyle: TextStyle(
            color: constant.textSecondary,
            // fontSize: 20.0,
            // fontWeight: FontWeight.w500,
            // fontStyle: FontStyle.italic,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: constant.textSecondary,
              width: 2,
              style: BorderStyle.solid,
            ),
          ),
        ),
      ),
    );
  }
}