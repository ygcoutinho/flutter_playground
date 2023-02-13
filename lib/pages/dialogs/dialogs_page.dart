import 'package:flutter/material.dart';
import 'package:flutter_playground/pages/dialogs/dialog_custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => DialogCustom(context: context),
              ),
              child: const Text('Custom Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => SimpleDialog(
                  title: const Text('Simple Dialog'),
                  contentPadding: const EdgeInsets.all(10),
                  children: [
                    const Text('This is a simple dialog!'),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('close'),
                    ),
                  ],
                ),
              ),
              child: const Text('Simple Dialog'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('Alert Dialog'),
                  icon: const Icon(Icons.error),
                  content: const Text('This is not a drill!!'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('run'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: const Text('RUN!!'),
                    ),
                  ],
                ),
              ),
              child: const Text('Alert Dialog'),
            ),
            ElevatedButton(
              onPressed: () async {
                var hour = await showTimePicker(context: context, initialTime: TimeOfDay.now());
                print('Hour selected: $hour');
              },
              child: const Text('Time Picker'),
            ),
            ElevatedButton(
              onPressed: () async {
                var date = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(1900),
                  lastDate: DateTime(2199),
                );
                print('Selected date: $date');
              },
              child: const Text('Date Picker'),
            ),
            ElevatedButton(
              onPressed: () => showDialog(context: context, builder: (_) => const AboutDialog()),
              child: const Text('About Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
