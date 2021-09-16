import 'package:flutter/material.dart';

class CheckboxFormField extends FormField<bool> {
  CheckboxFormField(
      {Key? key,
      String title = "",
      FormFieldSetter<bool>? onSaved,
      FormFieldValidator<bool>? validator,
      bool initialValue = false,
      AutovalidateMode autoValidateMode = AutovalidateMode.disabled})
      : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            builder: (FormFieldState<bool> state) {
              return Column(children: [
                CheckboxListTile(
                  title: Text(title),
                  value: state.value,
                  onChanged: (bool? value) {
                    state.didChange(value);
                  },
                ),
                state.hasError
                    ? Text(
                        state.errorText!,
                        style: const TextStyle(color: Colors.red),
                      )
                    : Container()
              ]);
            });
}
