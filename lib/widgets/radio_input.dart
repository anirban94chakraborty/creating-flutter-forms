import 'package:flutter/material.dart';

class RadioInput extends StatefulWidget {
  const RadioInput({Key? key}) : super(key: key);

  @override
  _RadioInputState createState() => _RadioInputState();
}

class _RadioInputState extends State<RadioInput> {
  String radioValue = "apples";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            title: const Text("Apples"),
            value: "apples",
            groupValue: radioValue,
            onChanged: (value) {}),
        RadioListTile(
            title: const Text("Oranges"),
            value: "oranges",
            groupValue: radioValue,
            onChanged: (value) {}),
        RadioListTile(
            title: const Text("Peaches"),
            value: "peaches",
            groupValue: radioValue,
            onChanged: (value) {}),
      ],
    );
  }
}
