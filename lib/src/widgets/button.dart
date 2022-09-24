
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class VentButton extends StatelessWidget {

  final String? title;
  final double? buttonHeight;
  final double? buttonWidth;
  final double? elevation;
  final double? borderRadius;
  final Color? buttonColor;
  final Color? borderColor;
  final Color? textColor;
  final Function? callBack;

  const VentButton(
      {
        this.elevation,
        required this.title,
        this.buttonHeight = 0.060,
        this.buttonWidth = double.infinity,
        this.borderRadius,
        this.buttonColor,
        required this.callBack,
        this.borderColor,
        this.textColor,
        Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * buttonHeight!,
      width: MediaQuery.of(context).size.width * buttonWidth!,
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(borderRadius!),
              side: BorderSide(color: borderColor!),
            ),
            elevation: elevation,
            primary: buttonColor!),
        onPressed: () {
          if (callBack != null) {
            callBack!();
          }
        },
        child: Text(
          title!,
          style: GoogleFonts.quicksand(
            textStyle: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
      ),
    );
  }
}