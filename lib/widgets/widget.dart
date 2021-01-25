import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'dart:math' as math;

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: Colors.black,
                      ),
                      borderRadius: BorderRadius.circular(8)),
                ),
                Icon(
                  Icons.add,
                  color: Colors.black,
                )
              ],
            ),
            //Text("Instagram", style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'Billabong',  fontWeight: FontWeight.normal)),
            Image(
                height: kToolbarHeight - 14,
                image: AssetImage("assets/images/instagram_(1).png")),
            FaIcon(
              FontAwesomeIcons.facebookMessenger,
              color: Colors.black,
              size: 25,
            ),
          ],
        ));
  }
}

class ProfileScreenAppbar extends StatelessWidget {
  const ProfileScreenAppbar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30, left: 16, right: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.lock_outline,
                color: Colors.black,
                size: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "kadusuhas100",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
              ),
              Transform.rotate(

                  //alignment: Alignment.lerp(Alignment.bottomCenter, Alignment.bottomCenter, 3),
                  angle: -math.pi / 2,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 16,
                  ))
            ],
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.add,
                  color: Colors.black,
                ),
              ),
              Icon(
                Icons.menu,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
    );
  }
}
