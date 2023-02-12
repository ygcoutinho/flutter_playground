import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/container/container_page.dart';
import 'package:flutter_playground/pages/home/home_page.dart';
import 'package:flutter_playground/pages/media_query/media_query_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/media_query': (_) => const MediaQueryPage(),
      },
    );
  }
}
