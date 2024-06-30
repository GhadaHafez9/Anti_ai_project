import 'package:anti_ai_project/screens/community/reaction_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CommunityPost extends StatelessWidget {
  final String profileImage;
  final String postImage;
  final String fullname;
  final String username;
  final String time;
  final String postContent;
  const CommunityPost({
    super.key,
    required this.fullname,
    required this.username,
    required this.profileImage,
    required this.postImage,
    required this.time,
    required this.postContent,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8.0),
                        child: Image.asset(
                          profileImage,
                          width: 45.w,
                        ),
                      ),
                      const SizedBox(width: 5),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            fullname,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.sp,
                            ),
                          ),
                          Text(
                            username,
                            style: TextStyle(
                              fontSize: 10.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Text(time),
            ],
          ),
          const SizedBox(height: 10),
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(postImage),
          ),
          Text(postContent),
          const SizedBox(height: 10),
          const Divider(height: 5, color: Color(0xff363A3D)),
          const Padding(
            padding: EdgeInsets.all(5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ReactionButton(
                  text: "Reaction",
                  icon: Icons.favorite_border,
                ),
                ReactionButton(
                  text: "Comment",
                  icon: Icons.mode_comment_outlined,
                ),
                ReactionButton(
                  text: "Vote",
                  icon: Icons.compare_arrows_sharp,
                ),
              ],
            ),
          ),
          const Divider(height: 5, color: Color(0xff363A3D)),
        ],
      ),
    );
  }
}
