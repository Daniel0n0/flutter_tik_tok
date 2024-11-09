// import 'dart:convert';
// VideoPost videoPostFromJson(String str) => VideoPost.fromJson(json.decode(str));
// String videoPostToJson(VideoPost data) => json.encode(data.toJson());

import 'package:flutter_tik_tok/domain/entities/video_post.dart';

class LocalVideoModel {
  final String name;
  final String videoUrl;
  final int likes;
  final int views;

  LocalVideoModel({
    required this.name,
    required this.videoUrl,
    this.likes = 0,
    this.views = 0,
  });

  factory LocalVideoModel.fromJson(Map<String, dynamic> json) => LocalVideoModel(
    name: json['name'] ?? 'No name',
    videoUrl: json['videoUrl'],
    likes: json['likes'] ?? 0,
    views: json['views'] ?? 0,
  );

  Map<String, dynamic> toJson() => {
    'name': name,
    'videoUrl': videoUrl,
    'likes': likes,
    'views': views,
  };

  VideoPost toVideoPostEntity() => VideoPost(
    caption: name,
    videoUrl: videoUrl,
    likes: likes,
    views: views
  );
}