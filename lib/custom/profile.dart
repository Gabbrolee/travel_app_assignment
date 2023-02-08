import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilities/app_icons.dart';

class Profile extends StatelessWidget {
  const Profile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 27),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: const [
              CircleAvatar(
                backgroundColor: Color(0xFFD9D9D9),
                radius: 32.0,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                  'Hello, Vineetha',
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 17),
              )
            ],
          ),
          SvgPicture.asset(
            lamp,
            height: 24.0,
            width: 24.0,
          )
        ],
      ),
    );
  }
}