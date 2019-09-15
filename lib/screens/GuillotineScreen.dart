import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:heritage_shortcuts/constants.dart';
import 'dart:math';
import 'package:heritage_shortcuts/components/SocialAccessButton.dart';
import 'package:heritage_shortcuts/screens/SocialAccountScreen.dart';

class GuillotineMenu extends StatefulWidget {
  @override
  _GuillotineMenuState createState() => _GuillotineMenuState();
}

class _GuillotineMenuState extends State<GuillotineMenu>
    with SingleTickerProviderStateMixin {
  AnimationController animationControllerMenu;
  Animation<double> animationMenu;
  Animation<double> animationTitleFadeInOut;
  _GuillotineAnimationStatus menuAnimationStatus;

  @override
  void initState() {
    super.initState();
    menuAnimationStatus = _GuillotineAnimationStatus.closed;

    ///
    /// Initialization of the animation controller
    ///
    animationControllerMenu = new AnimationController(
        duration: const Duration(
          milliseconds: 1000,
        ),
        vsync: this)
      ..addListener(() {});

    ///
    /// Initialization of the menu appearance animation
    ///
    animationMenu =
        new Tween(begin: -pi / 2.0, end: 0.0).animate(new CurvedAnimation(
      parent: animationControllerMenu,
      curve: Curves.bounceOut,
      reverseCurve: Curves.bounceIn,
    ))
          ..addListener(() {
            setState(() {
              // force refresh
            });
          })
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              menuAnimationStatus = _GuillotineAnimationStatus.open;
            } else if (status == AnimationStatus.dismissed) {
              menuAnimationStatus = _GuillotineAnimationStatus.closed;
            } else {
              menuAnimationStatus = _GuillotineAnimationStatus.animating;
            }
          });

    ///
    /// Initialization of the menu title fade out/in animation
    ///
    animationTitleFadeInOut =
        new Tween(begin: 1.0, end: 0.0).animate(new CurvedAnimation(
      parent: animationControllerMenu,
      curve: new Interval(
        0.0,
        0.5,
        curve: Curves.ease,
      ),
    ));
  }

  @override
  void dispose() {
    animationControllerMenu.dispose();
    super.dispose();
  }

  ///
  /// Play the animation in the direction that depends on the current menu status
  ///
  void _playAnimation() {
    try {
      if (menuAnimationStatus == _GuillotineAnimationStatus.animating) {
        // During the animation, do not do anything
      } else if (menuAnimationStatus == _GuillotineAnimationStatus.closed) {
        animationControllerMenu.forward().orCancel;
      } else {
        animationControllerMenu.reverse().orCancel;
      }
    } on TickerCanceled {
      // the animation go cancelled, probably because disposed
    }
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    double screenWidth = mediaQueryData.size.width;
    double screenHeight = mediaQueryData.size.height;
    double angle = animationMenu.value;

    return new Transform.rotate(
      angle: angle,
      origin: new Offset(24.0, 56.0),
      alignment: Alignment.topLeft,
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: screenWidth,
          height: screenHeight,
          color: Color(0xFF333333),
          child: new Stack(
            children: <Widget>[
              ///
              /// Menu title
              ///
              new Positioned(
                top: 32.0,
                left: 40.0,
                width: screenWidth,
                height: 24.0,
                child: new Transform.rotate(
                    alignment: Alignment.topLeft,
                    origin: Offset.zero,
                    angle: pi / 2.0,
                    child: new Center(
                      child: new Container(
                        width: double.infinity,
                        height: double.infinity,
                        child: new Text(
                          animationTitleFadeInOut.value == 0.0
                              ? 'WALL OF CREDITS'
                              : 'HITNAV',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                            letterSpacing: animationTitleFadeInOut.value == 0.0
                                ? 2.0
                                : 4.0,
                            shadows: [
                              Shadow(
                                color: Colors.lightBlueAccent,
                                blurRadius: 4.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    )),
              ),

              ///
              /// Hamburger icon
              ///
              new Positioned(
                top: 32.0,
                left: 4.0,
                child: new IconButton(
                  icon: const Icon(
                    Icons.menu,
                    color: Colors.blueAccent,
                  ),
                  onPressed: _playAnimation,
                ),
              ),

              ///
              /// Menu content
              ///
              new Padding(
                padding: const EdgeInsets.only(left: 64.0, top: 96.0),
                child: new Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: new Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: kCreditList.map((creditListItem) {
                      return new ListTile(
                        leading: CircleAvatar(
                          radius: 29.0,
                          backgroundImage: creditListItem['profilePic'],
                        ),
                        title: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8.0),
                          child: Column(
                            children: <Widget>[
                              MaterialButton(
                                onPressed: () {
                                  showModalBottomSheet(
                                    backgroundColor: Colors.transparent,
                                    context: context,
                                    builder: (context) => Stack(
                                          children: <Widget>[
                                            Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: <Widget>[
                                                Container(
                                                  padding: EdgeInsets.all(20.0),
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  decoration: BoxDecoration(
                                                    color: Color(0xFF457E9B),
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(30.0),
                                                      topRight:
                                                          Radius.circular(30.0),
                                                    ),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            10.0),
                                                    child: Center(
                                                      child: Text(
                                                        creditListItem["bio"],
                                                        style: TextStyle(
                                                          fontSize: 18.0,
                                                          color: Colors.white,
                                                          shadows: [
                                                            Shadow(
                                                              color: Colors
                                                                  .white70,
                                                              blurRadius: 4.0,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Positioned(
                                              bottom: creditListItem["title"] ==
                                                      "Sayantak Karar"
                                                  ? 135.0
                                                  : 71.0,
                                              left: screenWidth / 2 - 57.0,
                                              child: CircleAvatar(
                                                radius: 55.0,
                                                backgroundImage: creditListItem[
                                                    'profilePic'],
                                              ),
                                            ),
                                          ],
                                        ),
                                  );
                                },
                                height: 40.0,
                                splashColor: Colors.lightBlueAccent,
                                elevation: 12,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(10.0),
                                  ),
                                ),
                                color: Color(0xFF333333),
                                child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(
                                    creditListItem["title"],
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      color: Colors.white,
                                      shadows: [
                                        Shadow(
                                          color: Colors.lightBlueAccent,
                                          blurRadius: 4.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SocialAccessButton(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return SocialAccountScreen(
                                                url: creditListItem[
                                                    'facebookURL'],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      logo: NetworkImage(
                                          'https://lh3.googleusercontent.com/BjV0jWL0fVrkJuhlg3BKJaOnvjC2833uTejtKDgPEBwk7bNhnrghIkjCNTgQyyC24ym6_9nViGtiRx7MHCqY3vMyMSPfrOayDICRy08'),
                                      color: Color(0xFF0071BC),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: SocialAccessButton(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return SocialAccountScreen(
                                                  url: creditListItem[
                                                      'linkedInURL'],
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        logo: NetworkImage(
                                            'https://lh3.googleusercontent.com/n9FxvbNAqJDGVZyu1dYY6PBEXlaJfN1G8ZRbnAc4WjV2tLffNUoEB18hEWbkHdaIrrYgM6h41RxpuSZxIzVj8cFq1AeGwu1TIu-HICI'),
                                        color: Color(0xFF457E9B),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: Padding(
                                      padding:
                                          const EdgeInsets.only(right: 8.0),
                                      child: SocialAccessButton(
                                        onTap: () {
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                              builder: (context) {
                                                return SocialAccountScreen(
                                                  url: creditListItem[
                                                      'twitterURL'],
                                                );
                                              },
                                            ),
                                          );
                                        },
                                        logo: NetworkImage(
                                            'https://lh3.googleusercontent.com/R9A05ZYHlgvoa1HjRikGrk_VLp5SzrKNbMRmwdYuLOPJOPpmpUCkTn2swWZsx_b-34za8n6I_TDSUIsIT2ASKvg2gB1N3IAtmhHWn_s'),
                                        color: Color(0xFF627077),
                                      ),
                                    ),
                                  ),
                                  Flexible(
                                    child: SocialAccessButton(
                                      onTap: () {
                                        Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) {
                                              return SocialAccountScreen(
                                                url: creditListItem[
                                                    'instagramURL'],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      logo: NetworkImage(
                                          'https://lh3.googleusercontent.com/rpGjDJFiVC9mk2nvus90Yckiwmeuw1rfVwjxvQURLpWrMkb9JMlTl-iNZr31ksIXBua4SXxUZkJY7WdUtUDRV6HGoUeDpabnYmXD8sI'),
                                      color: Color(0xFF294861),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

///
/// Menu animation status
///
enum _GuillotineAnimationStatus { closed, open, animating }
