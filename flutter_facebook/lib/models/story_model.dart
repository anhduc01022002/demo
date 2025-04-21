import 'package:flutter/material.dart';

class story_recycler {
  String avatarPath;
  Color storyPath;
  String name;

  story_recycler({
    required this.avatarPath,
    required this.storyPath,
    required this.name,
  });

  static List<story_recycler> getStorySection() {
    List<story_recycler> story = [];

    story.add(
      story_recycler(
        avatarPath: "assets/image/avatar_notification.svg",
        storyPath: Color(0xFFF481EC),
        name: "User 1",
      ),
    );

    story.add(
      story_recycler(
        avatarPath: "assets/image/avatar_notification.svg",
        storyPath: Color(0xFFF481EC),
        name: "User 2",
      ),
    );

    story.add(
      story_recycler(
        avatarPath: "assets/image/avatar_notification.svg",
        storyPath: Color(0xFFF481EC),
        name: "User 3",
      ),
    );

    story.add(
      story_recycler(
        avatarPath: "assets/image/avatar_notification.svg",
        storyPath: Color(0xFFF481EC),
        name: "User 4",
      ),
    );

    return story;
  }
}
