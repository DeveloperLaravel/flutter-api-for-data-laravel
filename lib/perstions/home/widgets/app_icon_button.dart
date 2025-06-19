import 'package:flutter/material.dart';
import 'package:flutter_api_laravel/consts/constant.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({
    super.key,
    required this.onPressed,
    required this.icon,
    required this.tooltip,
  });
  final VoidCallback onPressed;
  final IconData icon;
  final String? tooltip;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      tooltip: tooltip,
      splashRadius: KIconButtonSplashRadius,
      onPressed: onPressed,
      icon: Icon(icon),
    );
  }
}
