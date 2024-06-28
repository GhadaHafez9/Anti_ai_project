import 'package:anti_ai_project/screens/community/posts_screen.dart';
import 'package:anti_ai_project/screens/community/reacts_screen.dart';
import 'package:anti_ai_project/screens/community/replies_screen.dart';
import 'package:anti_ai_project/screens/community/votes_screen.dart';
import 'package:flutter/material.dart';

import 'posts_screen.dart';
import 'reacts_screen.dart';
import 'replies_screen.dart';
import 'votes_screen.dart';

class Community_Screen extends StatefulWidget {
  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<Community_Screen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community'),
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(text: 'Posts'),
            Tab(text: 'Reacts'),
            Tab(text: 'Replies'),
            Tab(text: 'Votes'),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          PostsScreen(),
          ReactsScreen(),
          RepliesScreen(),
          VotesScreen(),
        ],
      ),
    );
  }
}
