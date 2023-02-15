import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_playground/pages/json_read/model/city.dart';

class JsonReadPage extends StatefulWidget {
  const JsonReadPage({Key? key}) : super(key: key);

  @override
  State<JsonReadPage> createState() => _JsonReadPageState();
}

class _JsonReadPageState extends State<JsonReadPage> {
  var _city = <City>[];
  @override
  initState() {
    _loadCities();
    super.initState();
  }

  Future<void> _loadCities() async {
    var data = await rootBundle.loadString('lib/assets/cities.json');
    setState(() {
      final citiesList = jsonDecode(data);
      _city = citiesList.map<City>((e) => City.fromMap(e)).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Json Read'),
      ),
      body: ListView.separated(
        separatorBuilder: (context, index) => const Divider(),
        itemCount: _city.length,
        itemBuilder: (_, index) => ListTile(
          title: Text(_city[index].city),
          subtitle: Text(_city[index].state),
        ),
      ),
    );
  }
}
