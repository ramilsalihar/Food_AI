import 'package:flutter/material.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    required this.title,
    required this.leadingIcon,
    required this.onLeadingIconPressed,
    this.trailingIcon,
    this.onTrailingIconPressed,
  });

  final String title;
  final Widget leadingIcon;
  final VoidCallback onLeadingIconPressed;
  final Widget? trailingIcon;
  final VoidCallback? onTrailingIconPressed;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: kToolbarHeight * 1.5,
      width: width - kToolbarHeight / 2,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          FloatingActionButton(
            heroTag: 'leading',
            backgroundColor: Colors.white,
            elevation: 0,
            onPressed: widget.onLeadingIconPressed,
            child: widget.leadingIcon,
          ),
          Center(
            child: Text(
              widget.title,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          widget.trailingIcon == null
              ? const SizedBox(width: kToolbarHeight)
              : FloatingActionButton(
                  heroTag: 'trailing',
                  backgroundColor: Colors.white,
                  elevation: 0,
                  onPressed: widget.onTrailingIconPressed,
                  child: widget.trailingIcon!,
                ),
        ],
      ),
    );
  }
}
