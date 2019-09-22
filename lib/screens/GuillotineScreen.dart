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
                                          'https://lh3.googleusercontent.com/KN_3ttOQFB2punsk6LJ_QtQPEmeNSm1lWoqVBhbjTKvwo6HG0aniM7748xL7KcsOY22nWMssA4YJhV9jLjp1xFSZI_LaXGY_3Lq7xUkTSVT7C46kIPNbkiBzE138AY0c9yZC1KNSPx7SmvX4OkDlpZKoNawv8meE897HQaQqn3GYioaL5Ys1VNH2Ho_8P7-a9pmww0HbmoK0aDEXjJ_6qk5x7ELyB3FIVJ6yrLl_8Max63quWoHyPUyFiS2JBx1puRtQKE1_1JETMcfmgSPbUf3L7bavG01tT_hyuUW3ap41_WMDQupThUGNYI9gqkQc8sretsKXxtQoPcByom1MOXRlmOIUquZGozQhusuufSdSSS4LxtAjh-JDKoPOUkoLOCHf8oiNryz3-2Qgdx8Fl9bBwF-04ncjbgvrWWKWXHa5fLP2snx5ROZtJNPyGbcVUahnTJnR4ZLXOehv1NLREJomNSfSgas0eoFPPCSLksGCvrXGuFAwOu_65ImGVcCXf48btj8alcycjyHL5Din76PFD85foPmVXWgqjnx69BlGLMcKrQ_tPkS2C__eAzccQmkRqw_mb6V9EbUh2k0JbwGghSU9EnYyxYfVqwSZ5z20Cr3r2rtTiwfTSPC47BwPNrB-MD1roazlmREovJGK7j_Mbw5JTX56IicyNcovl3nlWftEaKkdOnSp=w329-h330-no'),
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
                                            'https://lh3.googleusercontent.com/Rs9KsAbSnJt4ZwXqOyn-OxCv7rmrtWVQdM2W-poEON2bVPiJEgyinb0LtMbWNYD6RviZazquGS_yPgRmeTIzZERrucZodNwCOSzkLCHwsGlsvvWQ5k8QHZ_l9gx-iA_9sOodLP_KHFyfOobmU7v1W1oA9yKiNGf95Ntgw3guxepzDo25C-h9W8_hrTYuKIhvfox6xAcYXY30M9pkk44EbM5M_UKKEWuxpp5w-J4-cSgiMyVSSyA79T56_kDp4JK6fT93AhuRXm0g4ySBUW6oWpo58R4-LkvGSQfNftouwz2SSySgQ3fb-9zN7S6zTrjvm_qZopMdgeqkken_8c97s5aeK7A2hsoy2C40L0kaIUAeSfGdxcXDfs77q5hScfQjO-ZeftI5MSIOnD6wr4GJ5hGofi2MhqJaW_2FQpA63fXCaZr4cmULruEwHLgrXkdbve3_elYcKwbJn1yE6bk-Iz1YKwhf2ErnF_yRyAx8CDhbNR7jTnqyr7qF4GiJ6c-JMMGNTwrOAgYKRyOz4lIA3yObGEkTUWzEqSE6PkvPXOwulwimy8IIgKY7tos1c1Yg_mSGr1c-BtgnkhTd_xrK0oadIl8mp2iru50HyAXW0v_kJXTToI6r0oBOeH3eBoX00JFMsqk-N06xlS6bQ-3QTrFfdbOlBZRrPcorpnvbkKGjM8ZgEWejqEUk=s256-no'),
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
                                            'https://lh3.googleusercontent.com/uS1GedMxRN9UNe8ROaCoTivnEbBw5W9fJZviiEsPQEIBo-yvfKTlhiZJ0EOUjqJ5xTDg-0VpB1ZnwOBcsNH_7dQWW9ZtMG6-JLhE84lOZ5KiL6X5BkGGXqmxIqoo6-UsOeD7VWWhpRPD-wNsmPRBJewnAOARAxN2zu78gUmwQM1m5zJG0AryhTxOufnli_3OSF8DnVTRknay8kQ9q98mpa6LQ9l9Icw5Sa7s5FXkuxwThrKObQK-c3-ddar9VNL5wrR1SHy6ZLbAbBfENM-lasr9cuWBGxwjbVazpgovh67nBKmm38EL1m1rIFVi1u5qEsoY8yIFQ7CxUT-3cfXn8rYWGghJARaQ2o8rEkDKvqE7qyRcoUl5EbEDPswk639fCgcLXsEz1KNYT5H8rL4sXvQyK8L7SfDag7lU-tFynMGUDgUjxM-COlSSoZ4urFsGLl7tjlF9tfwZonRPRaCWpwYr_88NR8J2-lQsEfq9LVBXdsFzaSS2btC08i23s9FEnv2vfnMWtvnsxsH-lDOyOWdl8HNxKt6FO2nnUdgd-UfE6LUNFHgmVMYQiC6yMNZvtyTEY70otlmmkDOX8IXA6Ovs6yUc6ZQ1JSsJfUR4Zidg9rx6TFPnqYVHrB6lFvsh24hne8Q7OlCRWtAGxmmsKMatKvTn6tc-GVzB3FFENNn_DYaycU-9sZe5=w350-h349-no'),
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
                                          'https://lh3.googleusercontent.com/LWKNSY-nX1vSwBk60O0-7M8jghWQBDApsjKpnjqYXaH_clRSAbiluRZrygNG9Yv7t5hFKOeyA3KofmjmvORBniQzWfQDlf8L2jN1Bk6u7Oy0nrFFcwP6h-dAXvhsqXytlcNPmG4_5xFajSragUhG9n0u5VgzQlvTGob2l5DZ5OZX1Px4AtiFD5BXskZi7LxI1qtg0BcIw_RABdp04w5cFrip2Zw91kVLdi55mOxSmSaFYRfJ17u68oECJVIHAIHxI936jp6Du9JASis1wN-9dyyNrN2zZeda75H1rY4LH35zXH9EDl2WOwTW9XBQ8GqObfswgkwh4xqScjbybbaMWI_hKEFunDDtzCqxXvFZ4qeGjv6k_6LS3_ZGDEUSntPDYBZ8F5p9YcclPPZYV3bH-wRxM_z_P66aOY8X3lX0oE8VUiBPwp8Q0JmzaOGlZ6vwOYZ9bEA4FNOl0l4fG1d7vNPQbTl-C7wfxPzOYQ08SALUALEX5yJ73vyzRVpl5X3DckBRZTMiAxsVxtdA8BS2mlaiGT9FzIXfiF_n1zO0Mq8arPMgc3DnbXCbhRRll77DGALMmGgKZ4WGleHdF_cDdmA_760GSaRQHS2jLFyul0-ulT5kqF6vfaPmdMe1DssbHWIgazcUXZFNqk3ne7NMbI9VroJky1vR-Sv9463nR50rdO-kfbH3GmHW=s914-no'),
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
