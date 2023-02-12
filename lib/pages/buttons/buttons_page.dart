import 'package:flutter/material.dart';

class ButtonsPage extends StatefulWidget {
  const ButtonsPage({Key? key}) : super(key: key);

  @override
  State<ButtonsPage> createState() => _ButtonsPageState();
}

final List<String> list = ['Item 1', 'Item 2', 'Item 3'];

class _ButtonsPageState extends State<ButtonsPage> {
  String dropDownValue = list.first;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buttons'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red,
                elevation: 10,
              ),
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.green,
              child: const Icon(Icons.add),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text(
                'Outlined Button',
                style: TextStyle(color: Colors.red),
              ),
            ),
            DropdownButton(
              value: dropDownValue,
              items: list.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? value) {
                setState(() {
                  dropDownValue = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
