import 'package:flutter/material.dart';


class CategoryType extends StatelessWidget {
  const CategoryType(
      {Key? key, required this.color, required this.image, required this.text})
      : super(key: key);

  final Color color;
  final ImageProvider image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
          border: Border.all(color: color),
          borderRadius: BorderRadius.circular(10)),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.white,
            backgroundImage: image,
          ),
          const SizedBox(
            width: 10,
          ),
          Text(text)
        ],
      ),
    );
  }
}

