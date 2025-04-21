import 'package:flutter/material.dart';

import '../../models/story_model.dart';

class Story extends StatelessWidget {
  final List<story_recycler> stories;
  const Story({super.key, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 180,
      color: Color(0xFFFFFFFF),
      padding: EdgeInsets.all(10),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: stories.length,
        separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemBuilder: (context, index) {
          final story = stories[index];
          return Container(
            width: 100,
            height: 160,
            decoration: BoxDecoration(
              color: story.storyPath,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Stack(
              children: [
                Positioned(
                  left: 8,
                  bottom: 5,
                  child: Text(
                    story.name,
                    style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/image/john_doe.jpg",
                      width: 40,
                      height: 40,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
