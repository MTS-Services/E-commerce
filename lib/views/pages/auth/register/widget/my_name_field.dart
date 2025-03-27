import 'package:flutter/material.dart';

class MyNameField extends StatefulWidget {
  final String? hText;
  final String? lText;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const MyNameField({
    super.key,
    this.lText,
    this.hText,
    this.controller,
    this.onChanged,
  });

  @override
  State<MyNameField> createState() => _MyNameFieldState();
}

class _MyNameFieldState extends State<MyNameField> {
  late TextEditingController nameController;
  bool showCheckIcon = false;

  @override
  void initState() {
    super.initState();
    nameController = widget.controller ?? TextEditingController();

    nameController.addListener(() {
      setState(() {
        showCheckIcon = nameController.text.isNotEmpty;
      });
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      nameController.dispose();
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Container(
      height: screenHeight * 0.06,
      width: screenWidth,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: TextFormField(
        controller: nameController,
        decoration: InputDecoration(
          hintText: widget.hText ?? 'Enter your name',
          labelText: widget.lText ?? 'Full Name',
          suffixIcon: showCheckIcon
              ? const Icon(Icons.check, color: Colors.green)
              : null,
          border: const OutlineInputBorder(borderSide: BorderSide.none),
        ),
        validator: (value) {
          if (value == null || value.trim().isEmpty) {
            return "Name is required";
          } else if (!RegExp(r"^[a-zA-Z\s]+$").hasMatch(value)) {
            return "Invalid name (only letters allowed)";
          }
          return null;
        },
      ),
    );
  }
}
