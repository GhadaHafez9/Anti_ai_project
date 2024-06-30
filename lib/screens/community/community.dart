import 'package:anti_ai_project/models/data.dart';
import 'package:anti_ai_project/screens/community/community_post.dart';
import 'package:flutter/material.dart';

class Community_Screen extends StatefulWidget {
  const Community_Screen({super.key});

  @override
  State<Community_Screen> createState() => _Community_ScreenState();
}

class _Community_ScreenState extends State<Community_Screen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView.builder(
          itemCount: posts.length,
          itemBuilder: (ctx, i) {
            return CommunityPost(
              fullname: posts[i]["fullName"]!,
              username: posts[i]["username"]!,
              profileImage: posts[i]["profileImage"]!,
              postImage: posts[i]["postImage"]!,
              time: posts[i]["time"]!,
              postContent: posts[i]["postContent"]!,
            );
          },
        ),
      ),
    );
  }
}
