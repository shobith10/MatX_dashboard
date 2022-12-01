import 'package:dashboard_application/src/components/styles/colors.dart';
import 'package:dashboard_application/src/components/styles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String hintText;
  final bool isObscure;
  final TextInputAction? textInputAction;
  final FormFieldValidator? validator;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;
  final String? lableText;
  final TextInputFormatter? formatter;
  const LoginTextField({
    Key? key,
    this.controller,
    required this.hintText,
    this.isObscure = false,
    this.textInputAction,
    this.suffixIcon,
    this.validator,
    this.keyboardType,
    this.formatter,
    this.lableText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(boxShadow: [
        BoxShadow(
            color: Color.fromRGBO(0, 0, 0, 0.03),
            blurRadius: 10,
            offset: Offset(0, 2))
      ]),
      child: TextFormField(
        controller: controller,
        obscureText: isObscure,
        obscuringCharacter: '.',
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: formatter != null ? [formatter!] : null,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        validator: validator,
        cursorColor: Colors.black,
        style: textfieldTextStyle,
        decoration: InputDecoration(
          hintText: hintText,
          isDense: true,
          hintStyle: hintStyle,
          labelText: lableText,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
          suffixIcon: suffixIcon ?? const SizedBox(),
          suffixIconConstraints: const BoxConstraints(maxHeight: 30),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: geryColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              )),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: geryColor),
              borderRadius: const BorderRadius.all(
                Radius.circular(10),
              )),
        ),
      ),
    );
  }
}
