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
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          FollowRequestWidget(
            imgUrl: "assets/images/img3.png",
            name: " has requested to follow you",
          ),
          SizedBox(height: 20,),
          
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
        backgroundImage: AssetImage(imgUrl),
        radius: 25,
      ),
      title: RichText(
          text: TextSpan(
              text: "reactjs",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 16),
              children: [
            TextSpan(
                text: name,
                style: TextStyle(fontWeight: FontWeight.normal, fontSize: 16))
          ])),
      trailing: Wrap(
        alignment: WrapAlignment.end,
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(right: 16, left: 0),
            padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
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
          Icon(Icons.close)
        ],
      ),
    );
  }
}
