import 'package:flutter/material.dart';

class VentTextField extends StatelessWidget {
  final String? hintText;
  final BoxConstraints? constraints;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final String? Function(String?)? onChanged;
  final TextInputType? textInputType;
  final TextStyle? hintTextStyle;

  final double? width,height;
  final Color? color;
  final IconData? suffixIcon,prefixIcon;
  final bool? obscure;
  final Function? suffixIconFunction,prefixIconFunction;
  final Widget? prefixWidget,suffixWidget;

  const VentTextField({

    this.suffixIcon,
    this.prefixIcon,
    this.prefixIconFunction,
    this.suffixWidget,
    this.height,
    this.prefixWidget,
    this.hintTextStyle,
    this.obscure,
    this.width,

    this.suffixIconFunction,

    this.color,
    this.onChanged,
    this.textInputType,
    this.validator,
    this.hintText,
    this.constraints,
    this.controller, Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(

      height: MediaQuery.of(context).size.height * height!,
      width: MediaQuery.of(context).size.width * width!,
      child: TextFormField(

        obscureText: obscure!,
        cursorColor: const Color(0xff33A59E),
        onChanged: onChanged,
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcon,color: Color(0xff303030),),

          // prefixIcon: IconButton(onPressed: (){prefixIconFunction!();}, icon: Icon(prefixIcon,color: const Color(0xff303030),size: 21,)),

          suffixIcon: IconButton(onPressed: (){suffixIconFunction!();}, icon: Icon(suffixIcon,color: const Color(0xff303030),size: 21,)),
          filled: true,
          fillColor: const Color(0xffffffff),
          focusedBorder:  OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Color(0xff303030),width: 2,style: BorderStyle.solid)
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Color(0xff303030),width: 1,style: BorderStyle.solid)
          ),
          errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Colors.red,width: 1,style: BorderStyle.solid)
          ) ,
          focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100),
              borderSide: const BorderSide(color: Colors.red,width: 1,style: BorderStyle.solid)
          )  ,


          hintText: hintText,
          hintStyle: hintTextStyle,
        ),
        validator: validator,
      ),
    );
  }
}