import 'package:flutter/material.dart';

class MyEmailField extends StatefulWidget {
  final TextEditingController controller;
  final String? hText;
  final String? lText;

  final void Function(String)? onChanged;
  const MyEmailField(
      {super.key,
      required this.controller,
      this.lText,
      this.hText,
      this.onChanged});

  @override
  State<MyEmailField> createState() => _MyEmailFieldState();
}

class _MyEmailFieldState extends State<MyEmailField> {
  bool isValidEmail = false;
  void validateEmail(String value) {
    setState(() {
      isValidEmail = RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$")
          .hasMatch(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWeight = MediaQuery.of(context).size.width;
    return Container(
      height: screenHeight * 0.06,
      width: screenWeight * 1,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        onChanged: widget.onChanged ?? validateEmail,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.hText ?? 'Email',
          labelText: widget.lText ?? 'UserName or Email',
          suffixIcon: isValidEmail
              ? Icon(
                  Icons.check,
                  color: Colors.green,
                )
              : null,
          border: OutlineInputBorder(borderSide: BorderSide.none),
        ),
        validator: (value) {
          if (value == null || value == '') {
            return "email required";
          } else if (!(value.contains("@") && value.contains("."))) {
            return "wrong_email_error";
          }
          return null;
        },
      ),
    );
  }
}
