import 'package:flutter_tik_tok/domain/datasources/video_posts_datasource.dart';
import 'package:flutter_tik_tok/domain/entities/video_post.dart';
import 'package:flutter_tik_tok/domain/repositories/video_posts_repository.dart';

class VideoPostsRepository implements VideoPostRepository {
  final VideoPostDatasource videosDatasource;

  VideoPostsRepository({required this.videosDatasource});

  @override
  Future<List<VideoPost>> getFavoriteVIdeosByUser(String userID) {
    // TODO: implement getFavoriteVIdeosByUser
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {
    return videosDatasource.getTrendingVideosByPage(page);
  }
}