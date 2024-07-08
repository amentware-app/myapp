import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:myapp/utils/colors.dart';

showSnackBar(BuildContext context, String text) {
  return ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}

showsnack(
  String s1,
  String s2,
  IconData? ic,
) {
  return Get.snackbar(
    s1,
    s2,
    colorText: blackcolor,
    backgroundColor: whiteColor,
    margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
    borderRadius: 10,
    padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
    icon: Icon(
      ic,
      color: blackcolor,
      size: 40,
    ),
  );
}

class TextBox extends StatelessWidget {
  final TextEditingController textEditingController;
  final bool isPass;
  final String hintText;
  final TextInputType type;
  const TextBox({
    super.key,
    required this.textEditingController,
    this.isPass = false,
    required this.hintText,
    required this.type,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      keyboardType: type,
      obscureText: isPass,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(18),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.w500,
        ),
        fillColor: grey,
        filled: true,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}

class BlachButton extends StatelessWidget {
  const BlachButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
