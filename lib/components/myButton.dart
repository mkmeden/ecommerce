import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {

  final void Function() onTap;

  const MyButton({super.key , required this.onTap});

  @override
  Widget build(BuildContext context) {
    final palette =Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Icon(
            Icons.arrow_forward_rounded,
            color: palette.inversePrimary,
        ),
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: palette.secondary,
          borderRadius: BorderRadius.circular(10)
        ),
      ),
    );
  }
}


