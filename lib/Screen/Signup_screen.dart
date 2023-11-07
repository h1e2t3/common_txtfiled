import 'package:flutter/material.dart';

import '../common_widgets/common_Textfild.dart';

class signp1 extends StatefulWidget {
  const signp1({
    super.key,
  });

  @override
  State<signp1> createState() => _signp1State();
}

class _signp1State extends State<signp1> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
          height: size.height,
          width: size.width,
          alignment: Alignment.center,
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: const Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Singupfild(
                prefixIcon: Icons.person,
                title: 'Firstname',
                keyboardType: TextInputType.text,
              ),
              Singupfild(
                prefixIcon: Icons.person,
                title: 'Lastname',
                keyboardType: TextInputType.text,
              ),
              Singupfild(
                prefixIcon: Icons.mail_outline_rounded,
                title: 'Email',
                keyboardType: TextInputType.text,
              ),
              Singupfild(
                prefixIcon: Icons.lock_outline,
                suffixIcon: Icons.visibility,
                obscureText: false,
                title: 'Password',
                keyboardType: TextInputType.number,
              ),
            ],
          )),
    );
  }
}
