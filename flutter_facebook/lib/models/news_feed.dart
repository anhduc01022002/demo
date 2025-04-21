import 'package:flutter/material.dart';

class news_recycler {
  String avatarPath;
  String userName;
  String content;
  String contentPath;

  news_recycler({
    required this.avatarPath,
    required this.userName,
    required this.content,
    required this.contentPath,
  });

  static List<news_recycler> getNews() {
    List<news_recycler> news = [];

    news.add(
      news_recycler(
        avatarPath: "assets/icon/profile.svg",
        userName: "User 1",
        content: "Content 1",
        contentPath: "assets/image/john_doe.jpg",
      ),
    );

    news.add(
      news_recycler(
        avatarPath: "assets/icon/profile.svg",
        userName: "User 2",
        content: "Content 2",
        contentPath: "assets/image/john_doe.jpg",
      ),
    );

    news.add(
      news_recycler(
        avatarPath: "assets/icon/profile.svg",
        userName: "User 3",
        content: "Content 3",
        contentPath: "assets/image/john_doe.jpg",
      ),
    );

    news.add(
      news_recycler(
        avatarPath: "assets/icon/profile.svg",
        userName: "User 4",
        content: "Content 4",
        contentPath: "assets/image/john_doe.jpg",
      ),
    );

    return news;
  }
}
