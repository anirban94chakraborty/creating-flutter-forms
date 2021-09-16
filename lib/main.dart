import 'package:flutter/material.dart';
import 'package:flutter_forms/widgets/basic_form.dart';
import 'package:flutter_forms/widgets/checkbox_form_field.dart';
import 'package:flutter_forms/widgets/checkbox_input.dart';
import 'package:flutter_forms/widgets/dropdown_input.dart';
import 'package:flutter_forms/widgets/emails_input.dart';
import 'package:flutter_forms/widgets/multi_widget_form.dart';
import 'package:flutter_forms/widgets/password_reset_form.dart';
import 'package:flutter_forms/widgets/radio_input.dart';
import 'package:flutter_forms/widgets/slider_input.dart';
import 'package:flutter_forms/widgets/switch_input.dart';
import 'package:flutter_forms/widgets/text_input.dart';
import 'package:flutter_forms/widgets/validating_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Creating Forms with Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const MyHomePage(title: 'Flutter Forms'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[PasswordResetForm()],
        ),
      ),
    );
  }
}

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(title: Text(widget.title)),
//         body: Center(
//             child: Padding(
//           padding: const EdgeInsets.all(0),
//           child: CheckboxFormField(
//             autoValidateMode: AutovalidateMode.always,
//             title: 'Please Check the Option',
//             validator: (bool? value) {
//               return value! ? null : "Select this one please";
//             },
//           ),
//         )));
//   }
// }
