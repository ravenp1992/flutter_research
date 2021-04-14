import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final Widget child;
  final Color color;
  final double height;
  final double borderRadius;
  final VoidCallback onPressed;

  const CustomElevatedButton(
      {Key key,
      this.color,
      this.height = 50,
      this.borderRadius = 2.0,
      this.onPressed,
      this.child})
      : assert(borderRadius != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ElevatedButton(
        child: child,
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(borderRadius),
            ),
          ),
        ),
      ),
    );
  }
}
