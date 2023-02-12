import 'package:flutter/material.dart';

class MediaQueryPage extends StatefulWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  State<MediaQueryPage> createState() => _MediaQueryPageState();
}

class _MediaQueryPageState extends State<MediaQueryPage> {
  @override
  Widget build(BuildContext context) {
    final top = MediaQuery.of(context).padding.top;
    final size = MediaQuery.of(context).size;
    final screenHeight = size.height - top - kToolbarHeight;
    final screenWidth = size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Media Query'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            color: Colors.red,
            width: screenWidth * .5,
            height: screenHeight * .5,
          ),
          Container(
            color: Colors.blue,
            width: screenWidth,
            height: screenHeight * .5,
          ),
        ],
      ),
    );
  }
}
