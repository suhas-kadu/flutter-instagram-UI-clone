import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/data/data.dart';
import 'package:instagram_ui_clone/model/models.dart';
import 'package:instagram_ui_clone/widgets/user_story_post_widget.dart';
import 'package:instagram_ui_clone/widgets/widget.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<UserStory> userStories = new List();
  List<UserPost> userPosts = new List();

  @override
  void initState() {
    super.initState();
    userStories = getStories();
    userPosts = getPosts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: TitleBar(),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 120,
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 6.0, vertical: 8),
                itemCount: userStories.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return UserStoryWidget(
                    imgUrl: userStories[index].imgUrl,
                    userName: userStories[index].userName,
                  );
                },
              ),
            ),
            Divider(color: Colors.grey, height: 1,),
            Container(
              child: ListView.builder(
                physics: ClampingScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                padding: EdgeInsets.all(0),
                itemCount: userPosts.length,
                itemBuilder: (BuildContext context, int index) {
                  return UserPostWidget(
                    userName: userPosts[index].userName,
                    userSubtitle: userPosts[index].userSubtitle,
                    imgUrl: userPosts[index].imgUrl,
                    userAvatar: userPosts[index].userAvatarImg,
                    description: userPosts[index].description,
                    comments: userPosts[index].comments,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
