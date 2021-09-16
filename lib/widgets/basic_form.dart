import 'package:flutter/material.dart';

class BasicForm extends StatefulWidget {
  const BasicForm({Key? key}) : super(key: key);

  @override
  _BasicFormState createState() => _BasicFormState();
}

class _BasicFormState extends State<BasicForm> {
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
                onSaved: (String? value) {
                  print("Value: '$value'");
                },
              ),
              TextFormField(
                onSaved: (String? value) {
                  print("Value: '$value'");
                },
              ),
              TextFormField(
                onSaved: (String? value) {
                  print("Value: '$value'");
                },
              ),
              TextFormField(
                initialValue: "Hi",
                onSaved: (String? value) {},
                validator: (String? value) {
                  if (value!.isEmpty) {
                    return "Provide a value.";
                  }
                  return null;
                },
              ),
              Checkbox(
                value: true,
                onChanged: (bool? value) {},
              )
            ],
          ),
        ),
        ElevatedButton(
          child: const Text('Continue'),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState?.save();
            }
          },
        )
      ],
    );
  }
}
