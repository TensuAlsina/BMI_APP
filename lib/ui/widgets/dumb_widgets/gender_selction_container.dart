import 'package:bmi_app/ui/ui_helpers/shared_styles.dart';
import 'package:bmi_app/ui/ui_helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class GenderSelctionContainer extends StatelessWidget {
  final void Function()? ontap;
  final bool isSelcted;
  final String imagePath;
  final String genderName;
  const GenderSelctionContainer({
    Key? key,
    this.ontap,
    required this.imagePath,
    required this.genderName,
    required this.isSelcted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        height: 150,
        width: 150,
        decoration: BoxDecoration(
            color: const Color.fromARGB(255, 179, 182, 181),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: isSelcted ? Colors.green : Colors.black, width: 3.5)),
        child: Column(
          children: [
            verticalSpaceTiny,
            SvgPicture.asset(
              imagePath,
              width: 100,
              height: 100,
              color: Colors.black,
            ),
            verticalSpaceTiny,
            Text(
              genderName,
              style: ktsgrayMidumTextStyle,
            )
          ],
        ),
      ),
    );
  }
}
