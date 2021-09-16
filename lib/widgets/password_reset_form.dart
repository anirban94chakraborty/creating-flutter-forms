import 'package:flutter/material.dart';
import 'package:flutter_forms/models/passwords.dart';
import 'package:flutter_forms/widgets/checkbox_form_field.dart';
import 'package:flutter_forms/widgets/password_reset_form_field.dart';

class PasswordResetForm extends StatefulWidget {
  const PasswordResetForm({Key? key}) : super(key: key);

  @override
  _PasswordResetFormState createState() => _PasswordResetFormState();
}

class _PasswordResetFormState extends State<PasswordResetForm> {
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Form(
          key: formKey,
          child: Column(
            children: [
              PasswordResetFormField(
                initialValue: Passwords(),
                onSaved: (Passwords? passwords) {
                  // ignore: avoid_print
                  print("Password: ${passwords!.password}");
                },
                validator: (Passwords? passwords) {
                  if (passwords!.nonEmpty()) {
                    if (passwords.match()) {
                      if (passwords.valid()) {
                        return null;
                      }
                      return "Passwords should be 8 characters long";
                    }
                    return "Passwords should be same";
                  }
                  return "Passwords should not be empty";
                },
                autovalidateMode: AutovalidateMode.always,
              ),
              CheckboxFormField(
                title: "I agree to change password",
                onSaved: (bool? checked) {
                  // ignore: avoid_print
                  print("Checkbox: $checked");
                },
                validator: (bool? value) {
                  return (value == true) ? null : "You must check this";
                },
                autoValidateMode: AutovalidateMode.onUserInteraction,
              )
            ],
          ),
        ),
        ElevatedButton(
          child: const Text("Reset Password"),
          onPressed: () {
            if (formKey.currentState!.validate()) {
              formKey.currentState!.save();
            }
          },
        )
      ],
    );
  }
}
