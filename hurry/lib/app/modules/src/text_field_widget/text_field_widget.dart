import 'package:flutter/material.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  final TextEditingController controller;
  final bool obscure;
  const TextFieldWidget({
    Key? key,
    required this.hint,
    required this.controller,
    required this.obscure,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 5,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscure,
        decoration: InputDecoration(hintText: hint, border: InputBorder.none),
      ),
    );
  }
}
