import 'package:flutter/material.dart';
import 'package:time_tracker/app/common_widget/custom_elevated_button.dart';

class SocialSignInButton extends CustomElevatedButton {
  SocialSignInButton({
    @required String assetName,
    @required String text,
    Color color,
    Color textColor = Colors.black87,
    VoidCallback onPressed,
  })  : assert(assetName != null),
        assert(text != null),
        super(
          color: color,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(assetName),
              Text(
                text,
                style: TextStyle(color: textColor),
              ),
              Opacity(
                child: Image.asset(assetName),
                opacity: 0,
              ),
            ],
          ),
          onPressed: onPressed,
        );
}
