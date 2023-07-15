
import 'package:bookly/core/styles/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    required this.backgroundColor,
    required this.textColor,
     this.borderRadius,
    required this.text,
     this.fontSize,
    required this.onPressed
  }) : super(key: key);
  final Color backgroundColor;
  final Color textColor;
  final BorderRadius? borderRadius;
  final String text;
  final double? fontSize;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: onPressed,
           style: TextButton.styleFrom(
             backgroundColor: backgroundColor,
             shape: RoundedRectangleBorder(
               borderRadius:borderRadius?? BorderRadius.circular(
                 12,
               ),
             ),
           ),
          child: Text(
              text,
            style: Styles.textStyle18.copyWith(
              color: textColor,
              fontWeight: FontWeight.w900,
              fontSize: fontSize,
            ),
          ),
      ),
    );
  }
}
