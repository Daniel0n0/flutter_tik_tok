import 'package:flutter_tik_tok/domain/datasources/video_posts_datasource.dart';
import 'package:flutter_tik_tok/domain/entities/video_post.dart';
import 'package:flutter_tik_tok/infrastructure/models/local_videos_model.dart';
import 'package:flutter_tik_tok/shared/data/local_video_post.dart';

class LocalVideoDatasource implements VideoPostDatasource {
  @override
  Future<List<VideoPost>> getFavoriteVIdeosByUser(String userID) {
    // TODO: implement getFavoriteVIdeosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async {
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts
      .map((video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
      .toList();

    return newVideos;
  }

}