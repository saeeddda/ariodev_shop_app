import 'package:flutter/material.dart';

class ButtonBtn {
  Widget primaryButton(String btnName) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(25),
      child: SizedBox(
          width: double.infinity,
          height: 48,
          child: ElevatedButton(onPressed: () {}, child: Text(btnName))),
    );
  }
}
