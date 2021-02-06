import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/utils/constants.dart';

class UserStoryWidget extends StatelessWidget {
  final imgUrl;
  final userName;
  UserStoryWidget({this.imgUrl, this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.red, width: 2)),
            child: Container(
              //padding: EdgeInsets.all(2.5),
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 3)),
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  imgUrl,
                ),
                radius: 32,
              ),
            ),
          ),
          Text(
            userName,
            maxLines: 1,
          )
        ],
      ),
    );
  }
}

class UserPostWidget extends StatelessWidget {
  final String imgUrl;
  final String userName;
  final String userSubtitle;
  // final String description;
  final String userAvatar;
  final String comments;

  UserPostWidget({
    this.comments,
    // this.description,
    this.imgUrl,
    this.userName,
    this.userAvatar,
    this.userSubtitle,
  });

  // bool isUser1 = userName == "kadusuhas100" ;

  @override
  Widget build(BuildContext context) {
    bool isUser1 = userName == "kadusuhas100";
    bool isUser2 = userName == "user2010";

    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(
                userAvatar,
              ),
            ),
            title: Text(
              userName,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              userSubtitle,
              style: TextStyle(color: Colors.black),
            ),
            trailing: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: NetworkImage(imgUrl),
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width / 3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      FaIcon(FontAwesomeIcons.heart),
                      FaIcon(FontAwesomeIcons.comment),
                      Transform.rotate(angle: -45, child: Icon(Icons.send))
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FaIcon(FontAwesomeIcons.bookmark),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            width: MediaQuery.of(context).size.width,
            child: Row(
              children: [
                Text(
                  "Liked by",
                  style: kTextStyle,
                ),
                Text(
                  " kadusuhas26",
                  style: kBoldTextStyle,
                ),
                Text(
                  " and",
                  style: kTextStyle,
                ),
                Text(
                  " others",
                  style: kBoldTextStyle,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            child: Row(
              children: [
                Text(
                  isUser1
                      ? "kadusuhas100"
                      : (isUser2 ? "user2010" : "user2011"),
                  style: kBoldTextStyle,
                ),
                Text(
                  isUser1
                      ? " Hi there"
                      : (isUser2
                          ? " Finally! We are together"
                          : " Too much work"),
                  style: kTextStyle,
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            width: MediaQuery.of(context).size.width,
            child: Text(
              comments,
              style: TextStyle(color: Colors.grey.shade600, fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
