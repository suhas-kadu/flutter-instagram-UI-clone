import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
  final String description;
  final String userAvatar;
  final String comments;

  UserPostWidget(
      {this.comments,
      this.description,
      this.imgUrl,
      this.userName,
      this.userAvatar,
      this.userSubtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
              contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 0),
              leading: CircleAvatar(
                backgroundImage: NetworkImage(
                  userAvatar,
                ),
              ),
              title: Text(
                userName,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle:
                  Text(userSubtitle, style: TextStyle(color: Colors.black)),
              trailing: Icon(
                Icons.more_vert,
                color: Colors.black,
              )),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Image(
              image: NetworkImage(imgUrl),
              fit: BoxFit.fill,
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              width: MediaQuery.of(context).size.width,
              child: Text(description)),
          Row(
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
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            width: MediaQuery.of(context).size.width,
            child: Text(
              comments,
              style: TextStyle(color: Colors.grey.shade600),
            ),
          )
        ],
      ),
    );
  }
}
