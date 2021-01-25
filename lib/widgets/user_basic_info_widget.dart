import 'package:flutter/material.dart';

class BasicInfoWidget extends StatelessWidget {
  const BasicInfoWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding:
              const EdgeInsets.only(left: 20, top: 20, right: 5, bottom: 10),
          child: CircleAvatar(
            radius: 40,
            backgroundImage: NetworkImage(
                "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4"),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            children: [
              FollowersWidget(
                info: "5\nPosts",
              ),
              FollowersWidget(
                info: "294\nFollowers",
              ),
              FollowersWidget(
                info: "343\nFollowing",
              ),
            ],
          ),
        )
      ],
    );
  }
}

class FollowersWidget extends StatelessWidget {
  final String info;
  const FollowersWidget({Key key, this.info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        info,
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
      ),
    );
  }
}
