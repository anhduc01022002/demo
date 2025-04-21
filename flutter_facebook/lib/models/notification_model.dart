import 'package:flutter/material.dart';

class notification_recycler {
  String content;
  String date;
  String imagePath;

  notification_recycler({
    required this.content,
    required this.date,
    required this.imagePath,
  });

  static List<notification_recycler> getNotification() {
    List<notification_recycler> notice = [];

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    notice.add(
      notification_recycler(
        content: "New follower added you",
        date: "2025-04-16",
        imagePath: "assets/image/avatar_notification.svg",
      ),
    );

    return notice;
  }
}
