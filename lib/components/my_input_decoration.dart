
import 'package:flutter/material.dart';

class MyInputDecoration extends InputDecoration{

  MyInputDecoration(String hint) : super(
    hintText: hint,
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder (
      borderRadius: BorderRadius.circular(20),
    ),
    errorBorder: OutlineInputBorder (
      borderRadius: BorderRadius.circular(20),
    ),
    focusedErrorBorder: OutlineInputBorder (
      borderRadius: BorderRadius.circular(20),
    ),
  );

}