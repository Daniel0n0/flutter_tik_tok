import 'package:flutter_tik_tok/domain/entities/video_post.dart';

abstract class VideoPostRepository {
  
  Future<List<VideoPost>> getFavoriteVIdeosByUser(String userID);
  
  Future<List<VideoPost>> getTrendingVideosByPage(int page);

}