import 'package:flutter/material.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key? key,
    this.errors,
  }) : super(key: key);

  final List<String>? errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: List.generate(
        errors?.length ?? 0,
        (index) => Text(
          " * ${errors?[index]}",
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
