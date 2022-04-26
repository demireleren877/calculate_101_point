import 'package:flutter/material.dart';

class TeamField extends StatelessWidget {
  const TeamField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const TextField(
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
      ),
    );
  }
}
