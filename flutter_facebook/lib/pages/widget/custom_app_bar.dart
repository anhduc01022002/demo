import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "facebook",
          style: TextStyle(
            color: Color(0xFF0866ff),
            fontSize: 33,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 0.0,
      actions: [
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(3.0),
            width: 50,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icon/social_media.svg",
              height: 25,
              width: 25,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFe2e5ea),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 10)),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: EdgeInsets.all(3.0),
            width: 50,
            alignment: Alignment.center,
            child: SvgPicture.asset(
              "assets/icon/mess.svg",
              height: 25,
              width: 25,
            ),
            decoration: BoxDecoration(
              color: Color(0xFFe2e5ea),
              borderRadius: BorderRadius.circular(50),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.only(right: 15)),
      ],
    );
  }
}
