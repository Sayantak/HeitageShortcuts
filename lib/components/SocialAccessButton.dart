import 'package:flutter/material.dart';

class SocialAccessButton extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final ImageProvider logo;

  SocialAccessButton({
    this.onTap,
    this.color,
    this.logo,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(5.0),
            topRight: Radius.circular(5.0),
            bottomLeft: Radius.circular(5.0),
          ),
          color: color,
        ),
        padding: EdgeInsets.all(0.0),
        height: 35.0,
        width: 35.0,
        alignment: Alignment.center,
        child: Image(
          image: logo,
          height: 31.0,
          width: 31.0,
        ),
      ),
      onTap: onTap,
    );
  }
}
