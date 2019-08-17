import 'package:flutter/material.dart';

class InAppLogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          LogoIconPart(
            icon: Icons.location_on,
            locationIconIndex: 0,
          ),
          LogoIconPart(
            icon: Icons.fiber_manual_record,
          ),
          LogoIconPart(
            icon: Icons.fiber_manual_record,
          ),
          LogoIconPart(
            icon: Icons.directions_run,
          ),
          LogoIconPart(
            icon: Icons.fiber_manual_record,
          ),
          LogoIconPart(
            icon: Icons.directions_run,
          ),
          LogoIconPart(
            icon: Icons.fiber_manual_record,
          ),
          LogoIconPart(
            icon: Icons.directions_run,
          ),
          LogoIconPart(
            icon: Icons.fiber_manual_record,
          ),
          LogoIconPart(
            icon: Icons.fiber_manual_record,
          ),
          LogoIconPart(
            icon: Icons.location_on,
            locationIconIndex: 1,
          ),
        ],
      ),
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
