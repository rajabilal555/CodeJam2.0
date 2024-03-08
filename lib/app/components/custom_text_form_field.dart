import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    required this.controller,
  });

  final String label;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 48,
        child: TextFormField(
          controller: controller,
          decoration: InputDecoration(
            suffixIcon: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'g',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ],
            ),

            labelText: label,
            fillColor: Colors.grey.shade900,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
            //fillColor: Colors.green
          ),
          validator: (val) {
            if (val!.isEmpty) {
              return "Value cannot be empty";
            } else {
              return null;
            }
          },
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontFamily: "Inter",
          ),
        ),
      ),
    );
  }
}
