import 'package:flutter/material.dart';
import 'package:flutter_tik_tok/core/constants/app_theme.dart';
import 'package:flutter_tik_tok/infrastructure/datasource_impl/local_video_datasource_impl.dart';
import 'package:flutter_tik_tok/infrastructure/repository_impl/video_posts_repository_impl.dart';
import 'package:flutter_tik_tok/presentation/providers/discover_provider.dart';
import 'package:flutter_tik_tok/presentation/views/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final videoPostRepository = VideoPostsRepositoryImpl(
      videosDatasource: LocalVideoDatasource()
    );

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider(videosRepository: videoPostRepository)..loadNextPage()
        ),
      ],
      child: MaterialApp(
        title: 'Flutter Tik Tok',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen(),
      ),
    );
  }
}