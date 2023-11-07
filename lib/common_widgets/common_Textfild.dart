import 'package:flutter/material.dart';

class Singupfild extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool ? obscureText;
  final IconData prefixIcon;
  final IconData? suffixIcon;
  final String title;

  const Singupfild(
      {super.key, this.controller, this.keyboardType, this.obscureText, required this.prefixIcon, this.suffixIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextField(
        enabled: true,
          controller: controller,
          cursorColor: Colors.red,
          style: TextStyle(color:Colors.red),
          keyboardType: keyboardType,
          obscureText: obscureText ?? false,
          decoration: InputDecoration(
            enabledBorder:OutlineInputBorder(
              borderRadius:BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.red,width:2)
            ),
              focusedBorder:OutlineInputBorder(
                  borderRadius:BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.red,width: 2)
              ),
              prefixIcon: Icon(prefixIcon),
              suffixIcon: InkWell(onTap:,child: Icon(suffixIcon)),
              hintText: title
          ),
        ),
    );

  }
}
