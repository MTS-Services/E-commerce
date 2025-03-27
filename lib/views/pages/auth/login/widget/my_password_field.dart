import 'package:flutter/material.dart';

class MyPasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;

  const MyPasswordField({
    super.key,
    required this.controller,
    this.hintText,
  });

  @override
  State<MyPasswordField> createState() => _MyPasswordFieldState();
}

class _MyPasswordFieldState extends State<MyPasswordField> {
  late bool obscureText = true;
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
        controller: widget.controller,
        obscureText: obscureText,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          hintText: widget.hintText ?? "********",
          suffixIcon: IconButton(
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
            icon: Icon(obscureText ? Icons.visibility : Icons.visibility_off),
          ),
          labelText: 'Password',
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
        validator: (value) {
          if (value == null || value == '') {
            return "password required";
          } else if (value.toString().length < 6 &&
              widget.hintText == "signUp") {
            return "password_length_error";
          }
          return null;
        },
      ),
    );
  }
}
