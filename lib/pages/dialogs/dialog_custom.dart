import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom({super.key, required BuildContext context})
      : super(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: SizedBox(
            width: 150,
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Custom Dialog'),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: OutlinedButton(
                    onPressed: () => Navigator.of(context).pop(),
                    child: const Text('close'),
                  ),
                ),
              ],
            ),
          ),
        );
}
