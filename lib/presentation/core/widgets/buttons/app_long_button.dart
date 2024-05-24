import 'package:flutter/material.dart';

class AppLongButton extends StatefulWidget {
  const AppLongButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  State<AppLongButton> createState() => _AppLongButtonState();
}

class _AppLongButtonState extends State<AppLongButton> {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return SizedBox(
      height: 65,
      width: MediaQuery.of(context).size.width * 0.9,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24),
          ),
        ),
        onPressed: widget.onPressed,
        child: Text(
          widget.title,
          style: theme.textTheme.displayMedium!.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
