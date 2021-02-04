import 'package:flutter/material.dart';

class NotificaionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "Activity",
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Stack(
              children: [
                CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/417074/pexels-photo-417074.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500"),
                  radius: 25,
                ),
                Positioned(
                  left: 30,
                  child: CircleAvatar(
                    backgroundColor: Colors.red,
                    radius: 10,
                    child: Text(
                      "12",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ),
                )
              ],
            ),
            title: Text("Follow Requests"),
            subtitle: Text("Approve or ignore requests"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text("Today",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1603258849062-0f9f0d97cb47?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDF8dG93SlpGc2twR2d8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1612016194271-3b504ea0719f?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDV8dG93SlpGc2twR2d8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1611947915775-41ae94758f24?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMyfHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1611867416365-f636328625fa?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDMzfHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1611948357031-ef7bce1e44f0?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDM0fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1579463148228-138296ac3b98?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDE1fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
          FollowRequestWidget(
            imgUrl:
                "https://images.unsplash.com/photo-1612023998297-a2e0618642a7?ixid=MXwxMjA3fDB8MHx0b3BpYy1mZWVkfDI3fHRvd0paRnNrcEdnfHxlbnwwfHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            name: " has requested to follow you",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class FollowRequestWidget extends StatelessWidget {
  final String imgUrl;
  final String name;

  const FollowRequestWidget({
    Key key,
    @required this.imgUrl,
    @required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imgUrl),
        radius: 24,
      ),
      title: RichText(
          text: TextSpan(
              text: "user_xyz",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black,
                // fontSize: 16,
              ),
              children: [
            TextSpan(
              text: name,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                // fontSize: 16
              ),
            )
          ])),
      trailing: Wrap(
        alignment: WrapAlignment.end,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 8, left: 0),
            padding: EdgeInsets.symmetric(horizontal: 14, vertical: 6),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.blue,
            ),
            child: Text(
              "Confirm",
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 6),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                border: Border.all(color: Colors.grey.shade400, width: 0.5)),
            child: Text(
              " Delete",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ],
      ),
    );
  }
}
