import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_ui_clone/widgets/widget.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: double.infinity),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
ProfileScreenAppbar(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, right: 5, bottom: 10),
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
            ),
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
            Row(
              children: [
                HighlightsWidget(
                  imgUrl:
                      "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4",
                  caption: "Khadakwasla",
                ),
                HighlightsWidget(
                  imgUrl:
                      "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4",
                  caption: "Vetal Tekdi",
                ),
                HighlightsWidget(
                  imgUrl:
                      "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4",
                  caption: "VIT, Pune",
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height,
              color: Colors.black,
              child: DefaultTabController(
                length: 2,
                child: Scaffold(
                  appBar: AppBar(
                    titleSpacing: 0,
                    toolbarHeight: kToolbarHeight,
                    title: TabBar(
                      //indicatorPadding: EdgeInsets.all(32),
                      labelColor: Colors.black,
                      indicatorColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      physics: ClampingScrollPhysics(),
                      tabs: [
                        Tab(
                            icon: Icon(
                          Icons.grid_on,
                          size: 25,
                        )),
                        Tab(
                          icon: FaIcon(
                            FontAwesomeIcons.user,
                            color: Colors.black,
                          ),
                        )
                      ],
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0.0,
                  ),
                  body: TabBarView(physics: ClampingScrollPhysics(), children: [
                    GridView.count(
                      physics: ClampingScrollPhysics(),
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      children: [
                        Image(
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                        Image(
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                        Image(
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(32.0),
                          child: Icon(
                            Icons.photo_outlined,
                            size: 100,
                          ),
                        ),
                        Text(
                          "Photos and \nVideos of You",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "\nWhen people tag you in photos and \nvideos, they'll appear hear",
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
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
