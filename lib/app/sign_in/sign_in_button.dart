import 'package:flutter/material.dart';
import 'package:time_tracker/app/common_widget/custom_elevated_button.dart';

class SignInButton extends CustomElevatedButton {
  SignInButton({
    @required String text,
    Color color,
    Color textColor,
    VoidCallback onPressed,
  })  : assert(text != null),
        super(
          color: color,
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 15,
            ),
          ),
          borderRadius: 4,
        );
}
