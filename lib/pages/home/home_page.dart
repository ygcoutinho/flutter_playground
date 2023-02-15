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
  forms,
  jsonread,
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Playground'),
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
                case PopUpMenuPages.forms:
                  Navigator.of(context).pushNamed('/forms');
                  break;
                case PopUpMenuPages.jsonread:
                  Navigator.of(context).pushNamed('/jsonread');
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
                child: Text('Dialogs'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.snackbar,
                child: Text('Snackbar'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.forms,
                child: Text('Forms'),
              ),
              const PopupMenuItem(
                value: PopUpMenuPages.jsonread,
                child: Text('Json Read'),
              )
            ],
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
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
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/forms'),
                child: const Text('Forms'),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('/jsonread'),
                child: const Text('Json Read'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
