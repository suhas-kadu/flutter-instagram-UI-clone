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
                      "https://www.holidify.com/images/cmsuploads/compressed/Sunset_at_Khadakwasla_dam_pune_20190116141712.jpg",
                  caption: "Khadakwasla",
                ),
                HighlightsWidget(
                  imgUrl:
                      "https://s3-ap-southeast-1.amazonaws.com/reacho/post/httpimages/071117/690/img_201704113907555a0194837b21a.jpeg",
                  caption: "Vetal Tekdi",
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
