import 'package:flutter/material.dart';

class MultiWidgetForm extends StatefulWidget {
  const MultiWidgetForm({Key? key}) : super(key: key);

  @override
  _MultiWidgetFormState createState() => _MultiWidgetFormState();
}

class _MultiWidgetFormState extends State<MultiWidgetForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: "",
                autovalidateMode: AutovalidateMode.onUserInteraction,
                validator: (String? value) {
                  // ignore: avoid_print
                  print("Validating name field...");
                  if (value!.isEmpty) {
                    return "Please provide your name";
                  }
                  return null;
                },
                decoration: const InputDecoration(labelText: "Name"),
              ),
              TextFormField(
                initialValue: "",
                autovalidateMode: AutovalidateMode.always,
                keyboardType: TextInputType.emailAddress,
                validator: (String? value) {
                  // ignore: avoid_print
                  print("Validating email field...");
                  var regex = RegExp(r"^[A-Za-z0-9]+@[A-Za-z]+\.[A-Za-z]+$");
                  if (!regex.hasMatch(value!)) {
                    return "Please provide a valid email";
                  }
                },
                decoration: const InputDecoration(labelText: "Email"),
              ),
              TextFormField(
                initialValue: "",
                maxLength: 200,
                maxLines: 5,
                keyboardType: TextInputType.multiline,
                autovalidateMode: AutovalidateMode.always,
                validator: (String? value) {
                  // ignore: avoid_print
                  print("Validating message field...");
                  if (value!.isEmpty) {
                    return "Input your message";
                  }
                  return null;
                },
                decoration: const InputDecoration(labelText: "Message"),
              ),
            ],
          ),
        ),
        ElevatedButton(
          child: const Text('Process'),
          onPressed: () {
            formKey.currentState!.validate();
          },
        )
      ],
    );
  }
}
