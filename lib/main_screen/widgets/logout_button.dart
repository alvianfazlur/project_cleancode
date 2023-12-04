import 'package:flutter/material.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({Key? key, required this.onPressed}) : super(key: key);
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.exit_to_app),
    );
  }
}
