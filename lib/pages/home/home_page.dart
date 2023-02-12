import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum PopUpMenuPages {
  container,
  mediaQuery,
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
        actions: [
          PopupMenuButton<PopUpMenuPages>(
            onSelected: (PopUpMenuPages valueSelected) {
              switch (valueSelected) {
                case PopUpMenuPages.container:
                  Navigator.of(context).pushNamed('/container');
                  break;

                case PopUpMenuPages.mediaQuery:
                  Navigator.of(context).pushNamed('/media_query');
                  break;
                default:
              }
            },
            itemBuilder: (context) => <PopupMenuEntry<PopUpMenuPages>>[
              const PopupMenuItem(
                value: PopUpMenuPages.container,
                child: Text('Container'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.mediaQuery,
                child: Text('Media Query'),
              )
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/container'),
              child: const Text('Container Page'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/media_query'),
              child: const Text('Media Query'),
            ),
          ],
        ),
      ),
    );
  }
}
