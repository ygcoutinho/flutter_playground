import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/buttons/buttons_page.dart';
import 'package:flutter_playground/pages/container/container_page.dart';
import 'package:flutter_playground/pages/dialogs/dialogs_page.dart';
import 'package:flutter_playground/pages/home/home_page.dart';
import 'package:flutter_playground/pages/layout_builder/layout_builder_page.dart';
import 'package:flutter_playground/pages/list_view/list_view_page.dart';
import 'package:flutter_playground/pages/media_query/media_query_page.dart';
import 'package:flutter_playground/pages/snackbars/snackbar_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: false,
      ),
      debugShowCheckedModeBanner: false,
      title: 'Flutter Playground',
      routes: {
        '/': (_) => const HomePage(),
        '/container': (_) => const ContainerPage(),
        '/media_query': (_) => const MediaQueryPage(),
        '/layout_builder': (_) => const LayoutBuilderPage(),
        '/butons': (_) => const ButtonsPage(),
        '/listview': (_) => const ListViewPage(),
        '/dialogs': (_) => const DialogsPage(),
        '/snackbar': (_) => const SnackbarPage(),
      },
    );
  }
}
