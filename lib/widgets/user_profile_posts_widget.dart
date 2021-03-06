import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UserProfilePostsWidget extends StatelessWidget {
  const UserProfilePostsWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
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
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1571235853757-68ad8c3be298?ixid=MXwxMjA3fDB8MHxzZWFyY2h8NTh8fG5hdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
                  Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1500534623283-312aade485b7?ixid=MXwxMjA3fDB8MHxzZWFyY2h8MTV8fG5hdHVyZXxlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
                  Image(
                      fit: BoxFit.cover,
                      image: NetworkImage(
                          "https://images.unsplash.com/photo-1470755008296-2939845775eb?ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mjd8fHBsYW50c3xlbnwwfHwwfA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60")),
                 Image(
                      fit: BoxFit.cover,
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
      ),
    );
  }
}
