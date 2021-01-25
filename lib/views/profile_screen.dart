import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/widgets/user_basic_info_widget.dart';
import 'package:instagram_ui_clone/widgets/user_bio_highlights_widget.dart';
import 'package:instagram_ui_clone/widgets/user_profile_posts_widget.dart';
import 'package:instagram_ui_clone/widgets/widget.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(maxHeight: double.infinity),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ProfileScreenAppbar(),
            BasicInfoWidget(),
            UserBioWidget(),
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
            UserProfilePostsWidget()
          ],
        ),
      ),
    );
  }
}
