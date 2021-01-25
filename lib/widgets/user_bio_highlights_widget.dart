import 'package:flutter/material.dart';

class UserBioWidget extends StatelessWidget {
  const UserBioWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
          alignment: Alignment.topLeft,
          child: Text(
            "Suhas Kadu",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          )),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 0),
        alignment: Alignment.topLeft,
        child: Text(
            "18\nVIT, Pune\nNaturaly Introverted\nSelectively Extroverted"),
      ),
      Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(width: 1, color: Colors.grey.shade300)),
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.symmetric(vertical: 10),
        alignment: Alignment.center,
        child: Text(
          "Edit Profile",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    ]);
  }
}

class HighlightsWidget extends StatelessWidget {
  final String imgUrl;
  final String caption;

  const HighlightsWidget({Key key, this.imgUrl, this.caption})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(width: 1, color: Colors.grey)),
          child: Container(
            padding: EdgeInsets.all(4),
            child: CircleAvatar(
              radius: 32,
              backgroundImage: NetworkImage(imgUrl),
            ),
          ),
        ),
        Text(caption),
      ],
    );
  }
}
