import 'package:flutter/material.dart';

import '../../ui_helpers/shared_styles.dart';

class CustomButton extends StatelessWidget {
  final String middleText;
  final void Function()? onTap;
  const CustomButton({
    Key? key,
    required this.middleText,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 70,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: Center(
            child: Text(
          middleText,
          style: ktsWhiteMidumTextStyle,
        )),
      ),
    );
  }
}
