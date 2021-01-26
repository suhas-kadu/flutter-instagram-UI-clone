import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/widget.dart';

class SearchScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height,
        ),
        child: DefaultTabController(
          length: 8,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0.0,
              title: SearchBar(),
              bottom: TabBar(
                
                indicatorPadding: EdgeInsets.zero,
                labelColor: Colors.black,
                physics: ClampingScrollPhysics(),
                labelStyle: TextStyle(fontWeight: FontWeight.bold),
                indicatorColor: Colors.white,
                tabs: [
                  CustomTab(
                    label: "IGTV",
                  ),
                  CustomTab(label: "Travel"),
                  CustomTab(label: "Architecture"),
                  CustomTab(label: "Decor"),
                  CustomTab(label: "Style"),
                  CustomTab(label: "Food"),
                  CustomTab(label: "Art"),
                  CustomTab(label: "TV & Movies"),
                ],
                isScrollable: true,
              ),
            ),
            body: TabBarView(physics: ClampingScrollPhysics(), children: [
              Container(
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height / 5.4,
                                width: MediaQuery.of(context).size.width / 3,
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                            SizedBox(height: 2),
                            Image(
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height / 5.4,
                                width: MediaQuery.of(context).size.width / 3,
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                          ],
                        ),
                        SizedBox(width: 2),
                        Image(
                            fit: BoxFit.cover,
                            height:
                                (MediaQuery.of(context).size.height / 2.7) + 2,
                            width:
                                MediaQuery.of(context).size.width * 2 / 3 - 2,
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4"))
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image(
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height / 5.4,
                                width: MediaQuery.of(context).size.width / 3,
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                            SizedBox(height: 2),
                            Image(
                                fit: BoxFit.cover,
                                height:
                                    MediaQuery.of(context).size.height / 5.4,
                                width: MediaQuery.of(context).size.width / 3,
                                image: NetworkImage(
                                    "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4")),
                          ],
                        ),
                        SizedBox(width: 2),
                        Image(
                            fit: BoxFit.cover,
                            height:
                                (MediaQuery.of(context).size.height / 2.7) + 2,
                            width:
                                MediaQuery.of(context).size.width * 2 / 3 - 2,
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/60438083?s=460&u=8b777d70ae095c37b2efc63a5977fbe7f314f053&v=4"))
                      ],
                    ),
                  ],
                ),
              ),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
              Text("data"),
            ]),
          ),
        ),
      ),
    );
  }
}

class CustomTab extends StatelessWidget {
  final String label;
  const CustomTab({
    Key key,
    @required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      padding: EdgeInsets.symmetric(horizontal: 13),
      height: 26,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: Colors.grey,
          )),
      child: Tab(
        text: label,
      ),
    );
  }
}
