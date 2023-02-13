import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

enum PopUpMenuPages {
  container,
  mediaQuery,
  layoutBuilder,
  buttons,
  listView,
  showDialog,
  snackbar,
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
                case PopUpMenuPages.layoutBuilder:
                  Navigator.of(context).pushNamed('/layout_builder');
                  break;
                case PopUpMenuPages.buttons:
                  Navigator.of(context).pushNamed('/butons');
                  break;
                case PopUpMenuPages.listView:
                  Navigator.of(context).pushNamed('/listview');
                  break;
                case PopUpMenuPages.showDialog:
                  Navigator.of(context).pushNamed('/dialogs');
                  break;
                case PopUpMenuPages.snackbar:
                  Navigator.of(context).pushNamed('/snackbar');
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
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.layoutBuilder,
                child: Text('LayoutBuilder'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.buttons,
                child: Text('Butons'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.listView,
                child: Text('List View'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.showDialog,
                child: Text('List View'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.snackbar,
                child: Text('Snackbar'),
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
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/layout_builder'),
              child: const Text('Layout Builder'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/butons'),
              child: const Text('Butons'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/listview'),
              child: const Text('List View'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/dialogs'),
              child: const Text('Dialogs'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pushNamed('/snackbar'),
              child: const Text('Snackbar'),
            ),
          ],
        ),
      ),
    );
  }
}
