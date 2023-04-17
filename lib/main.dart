import 'package:flutter/material.dart';
import 'package:image_search/data/api.dart';
import 'package:image_search/data/photo_provider.dart';
import 'package:image_search/ui/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const String apiKey = '35252766-0441f9b171775eb8bc234ee25';

  static const String url = 'https://pixabay.com/api/';
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PhotoProvider(
        api: PixabayClass(),
        child: const HomeScreen(),
      ),
    );
  }
}
