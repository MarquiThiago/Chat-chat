import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({
    required this.onTap,
    required this.text,
    super.key,
  });

  final String text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Theme.of(context).colorScheme.primary,
        ),
        child: Center(
          child: InkWell(
            onTap: onTap,
            child: Text(
              text,
              style: TextStyle(
                color: Theme.of(context).colorScheme.tertiary,
                fontSize: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
