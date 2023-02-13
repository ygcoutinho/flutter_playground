import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View'),
      ),
      body: ListView.separated(
        itemCount: 500,
        separatorBuilder: (_, index) => const Divider(
          color: Colors.grey,
        ),
        itemBuilder: (_, index) => ListTile(
          title: Text('Item #$index'),
          subtitle: const Text('this is a subtitle'),
          leading: const FlutterLogo(),
          trailing: const Icon(Icons.delete),
        ),
      ),
    );
  }
}
