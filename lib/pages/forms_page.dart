import 'package:flutter/material.dart';

class FormsPage extends StatefulWidget {
  const FormsPage({Key? key}) : super(key: key);

  @override
  State<FormsPage> createState() => _FormsPageState();
}

class _FormsPageState extends State<FormsPage> {
  var userInputEmail = TextEditingController();
  var formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    userInputEmail.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Forms'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Form(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        controller: userInputEmail,
                        key: formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        //maxLines: null,
                        maxLength: 250,
                        validator: (String? value) {
                          if (value == null || !value.contains('@') || !value.contains('.')) {
                            debugPrint('passou por aqui');
                            return 'Error';
                          }
                          debugPrint('passou por aqui 2');
                          return null;
                        },

                        decoration: const InputDecoration(
                          labelText: 'E-mail',
                          hintText: 'example@example.com',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(3)),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 30),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  var validate = formKey.currentState?.validate() ?? false;
                  debugPrint(validate.toString());
                  if (validate) {
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text('ok!')));
                  }
                },
                child: const Text('Validate'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
