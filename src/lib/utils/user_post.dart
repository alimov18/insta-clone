import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class UserPosts extends StatefulWidget {
  const UserPosts({super.key});
  @override
  State<UserPosts> createState() => _UserPostsState();
}

class _UserPostsState extends State<UserPosts> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image: AssetImage("assets/images/flutter.jpg")),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  const Text(
                    "Flutter",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                  Icon(Icons.more_vert),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 10),
          height: 250,
          color: Colors.grey[400],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const Icon(Icons.favorite),
                Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  child: const Icon(Icons.chat_bubble_outline),
                ),
                const Icon(Icons.share),
              ],
            ),
            Row(
              children: const [Icon(Icons.bookmark)],
            ),
          ],
        ),
        Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5, left: 5),
              child: Row(children: const [
                Text("Liked by "),
                Text(
                  "dart",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(" and "),
                Text(
                  "others",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ]),
            )
          ],
        )
      ],
    );
  }
}
// https://youtu.be/z5PH2s9ytl8?t=559