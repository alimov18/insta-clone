import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';
import 'package:history/utils/bubble_stories.dart';
import 'package:history/utils/user_post.dart';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Instagram",
              style: TextStyle(
                  color: Colors.black, fontFamily: "makaroni", fontSize: 32),
            ),
            Row(
              children: const [
                Icon(Icons.add),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Icon(Icons.favorite),
                ),
                Icon(Icons.share),
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          // Stroies
          Container(
            height: 130,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                BubbleStories(
                  text: "dart",
                ),
                BubbleStories(
                  text: "flutter",
                ),
                BubbleStories(
                  text: "golang",
                ),
                BubbleStories(
                  text: "rust",
                ),
                BubbleStories(
                  text: "nodejs",
                ),
              ],
            ),
          ),
          const UserPosts(),
        ],
      ),
    );
  }
}
