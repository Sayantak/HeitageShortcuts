import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class InAppLogo extends StatelessWidget {
  final List<Widget> scrollableIcons = [
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.fiber_manual_record,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.fiber_manual_record,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.fiber_manual_record,
          size: 2.0,
          color: Colors.transparent,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.directions_run,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.fiber_manual_record,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Icon(
          Icons.fiber_manual_record,
          size: 2.0,
          color: Colors.transparent,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.directions_run,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.fiber_manual_record,
        ),
      ],
    ),
    Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.directions_run,
        ),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        LogoIconPart(
          icon: Icons.location_on,
          locationIconIndex: 0,
        ),
        Flexible(
          child: Container(
            height: 10.0,
            width: 80.0,
            child: CarouselSlider(
              height: 30.0,
              autoPlay: true,
              viewportFraction: 0.07,
              reverse: true,
              autoPlayInterval: Duration(seconds: 1),
              items: [1, 2, 3, 4, 5, 6, 7].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 0.0),
                        child: scrollableIcons[i - 1]);
                  },
                );
              }).toList(),
            ),
          ),
        ),
        LogoIconPart(
          icon: Icons.location_on,
          locationIconIndex: 1,
        ),
      ],
    );
  }
}

class LogoIconPart extends StatelessWidget {
  final int locationIconIndex;
  final IconData icon;
  const LogoIconPart({@required this.icon, this.locationIconIndex});

  double decideIconSize() {
    if (icon == Icons.location_on) {
      if (locationIconIndex == 0)
        return 32.0;
      else
        return 25.0;
    } else if (icon == Icons.directions_run)
      return 12.0;
    else
      return 5.0;
  }

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Icon(
        icon,
        color: icon == Icons.location_on ? Colors.blue[400] : Colors.white,
        size: decideIconSize(),
      ),
    );
  }
}
