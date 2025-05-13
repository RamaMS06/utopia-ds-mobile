import 'package:flutter/material.dart';

class UTText extends StatelessWidget {
  final String data;

  const UTText(
    this.data, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(),
    );
  }
}
