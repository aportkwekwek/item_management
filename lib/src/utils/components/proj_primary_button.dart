import 'package:flutter/material.dart';

class PrimaryButton extends StatefulWidget {
  final Function()? buttonTap;
  final String buttonText;
  const PrimaryButton(
      {super.key, required this.buttonTap, required this.buttonText});

  @override
  State<PrimaryButton> createState() => _PrimaryButtonState();
}

class _PrimaryButtonState extends State<PrimaryButton> {
  @override
  build(BuildContext context) {
    return GestureDetector(
      onTap: widget.buttonTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
            child: Text(
          widget.buttonText,
          style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
              fontFamily: 'Lato',
              fontSize: 18,
              fontWeight: FontWeight.bold),
        )),
      ),
    );
  }
}
