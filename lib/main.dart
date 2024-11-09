import 'package:flutter/material.dart';
import 'package:flutter_tik_tok/core/constants/app_theme.dart';
import 'package:flutter_tik_tok/presentation/providers/discover_provider.dart';
import 'package:flutter_tik_tok/presentation/views/discover_screen.dart';
import 'package:provider/provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage()
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