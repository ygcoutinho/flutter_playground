import 'package:flutter/material.dart';

class LayoutBuilderPage extends StatelessWidget {
  const LayoutBuilderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Center(
        child: LayoutBuilder(
          builder: (context, constrains) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Colors.purple,
                width: constrains.maxWidth * .90,
                height: constrains.maxHeight * .5,
              ),
              Container(
                color: Colors.orange,
                width: constrains.maxWidth,
                height: constrains.maxHeight * .3,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
