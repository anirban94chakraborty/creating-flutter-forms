import 'package:flutter/material.dart';

class CheckboxInput extends StatefulWidget {
  const CheckboxInput({Key? key}) : super(key: key);

  @override
  _CheckboxInputState createState() => _CheckboxInputState();
}

class _CheckboxInputState extends State<CheckboxInput> {
  bool checkbox1 = false;
  bool checkbox2 = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CheckboxListTile(
          title: const Text("Option One"),
          value: checkbox1,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              checkbox1 = value!;
            });
          },
        ),
        CheckboxListTile(
          title: const Text("Option Two"),
          value: checkbox2,
          controlAffinity: ListTileControlAffinity.leading,
          onChanged: (bool? value) {
            setState(() {
              checkbox2 = value!;
            });
          },
        ),
      ],
    );
  }
}
