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
            Icon(Icons.add_a_photo, color: Colors.black,),
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

class AddRoundedIcon extends StatelessWidget {
  const AddRoundedIcon({
    Key key,
    @required this.bgColor,
    @required this.fgColor
  }) : super(key: key);

  final Color bgColor;
  final Color fgColor;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          
          width:25,
          height: 25,
          decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Colors.black,
              ),
              color: bgColor,
              borderRadius: BorderRadius.circular(6)),
        ),
        Icon(
          Icons.add,
          color: fgColor,
          size: 25,
        )
      ],
    );
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

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  TextEditingController _controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(height: 10),
          Flexible(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 8),
              margin: EdgeInsets.only(top: 8, right: 24),
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade200),
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(8)),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                    isDense: true,
                    hintText: "Search",
                    border: InputBorder.none,
                    hintStyle: TextStyle(color: Colors.grey),
                    
                    icon: Icon(
                      Icons.search,
                      color: Colors.grey.shade500,
                      size: 25,
                    )),
              ),
            ),
          ),
          FaIcon(
            FontAwesomeIcons.instagram,
            size: 25,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
