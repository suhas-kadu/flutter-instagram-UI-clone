import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart'; 
import 'dart:math' as math;

class TitleBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
       
      ),
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
              width: 2, color: Colors.black,), 
              borderRadius: BorderRadius.circular(8)
          ),
          ), 
          Icon(Icons.add, color: Colors.black,)
          ],
          ),
        //Text("Instagram", style: TextStyle(color: Colors.black, fontSize: 40, fontFamily: 'Billabong',  fontWeight: FontWeight.normal)),
        Image(
          height: kToolbarHeight,
          //fit: BoxFit.fitWidth,
          image: AssetImage("assets/images/instagram_(1).png")),
        FaIcon(FontAwesomeIcons.facebookMessenger, color: Colors.black, size: 25,),
        
      ],)
      
    );
  }
}

class UserStoryWidget extends StatelessWidget {
  final imgUrl;
  final userName;
  UserStoryWidget({this.imgUrl, this.userName});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8),
      child: Column(children: [
        Container(                
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            
            border: Border.all(color: Colors.red, width: 2)
            
          ),
          child: Container(
            //padding: EdgeInsets.all(2.5),
            decoration: BoxDecoration(
            shape: BoxShape.circle,
                       
            border: Border.all(color: Colors.white, width: 3)
            
          ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(imgUrl, ),
              radius: 32,
            ),
          ),
        ),
        Text(userName, maxLines: 1, )
      ],),
    );
  }
}

class UserPostWidget extends StatelessWidget {
  String imgUrl;
  String userName;
  String userSubtitle;
  String description;
  String userAvatar;
  String comments;

  UserPostWidget({this.comments,this.description, this.imgUrl, this.userName, this.userAvatar, this.userSubtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.all(0),
      child: Column(
        children: [
          ListTile(
            contentPadding: EdgeInsets.symmetric(horizontal: 16),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(userAvatar, ),
            ),
            title: Text(userName, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(userSubtitle, style: TextStyle(color: Colors.black)),
            trailing: Icon(Icons.more_vert, color: Colors.black,)
          ),
          Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            child: Image(image: NetworkImage(imgUrl), fit: BoxFit.fill,),),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              
              width: MediaQuery.of(context).size.width,
              child: Text(description)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Container(
                  width: MediaQuery.of(context).size.width/3,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      
                    FaIcon(FontAwesomeIcons.heart),
                    FaIcon(FontAwesomeIcons.comment),
                    //FaIcon(FontAwesomeIcons.paperPlane),
                    Transform.rotate(
                      angle: -45,
                      child: Icon(Icons.send))

                  ],),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: FaIcon(FontAwesomeIcons.bookmark),
                )
              ],),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                width: MediaQuery.of(context).size.width,
                child: Text(comments, style: TextStyle(color: Colors.grey.shade600),),)
        ],
      ),
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
      margin: EdgeInsets.only(top: 30,left: 16, right: 16),
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
                angle: -math.pi/2,
                child: Icon(Icons.arrow_back_ios, size: 16,))
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


class ProfileScreenPostsWidget extends StatefulWidget {
  @override
  _ProfileScreenPostsWidgetState createState() => _ProfileScreenPostsWidgetState();
}

class _ProfileScreenPostsWidgetState extends State<ProfileScreenPostsWidget>  with SingleTickerProviderStateMixin{
  TabController controller;
  
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 2, vsync: this);    
  }
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(     
      body: NestedScrollView(
        physics: ClampingScrollPhysics(),
        floatHeaderSlivers: true,
        headerSliverBuilder: (context, bool innerboxIsScrolled){
          
          return <Widget>[
            SliverAppBar(
              floating: true,
              pinned: true,
              bottom: TabBar(
                isScrollable: true,
                controller: controller,
              tabs: [
                Tab(icon: Icon(Icons.grid_on),),
                Tab(icon: Icon(Icons.grid_on),),
                
              ],
              ),
            )
          ];
        },
        body: Container(
          height: height,
          child: TabBarView(
              controller: controller,
              children: [Text("Data"), Text("Data")]),
        ),
      )
      
    );
  }
}