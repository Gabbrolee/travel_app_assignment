import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  SectionHeader({Key? key, required this.sectionText, required this.optionText})
      : super(key: key);
  String sectionText;
  String optionText;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          sectionText,
          style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 16.0),
        ),
        Text(
          optionText,
          style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              color: Color.fromRGBO(0, 0, 0, 0.25)),
        ),
      ],
    );
  }
}
