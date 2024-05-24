import 'package:flutter/material.dart';
import 'package:food_ai/core/extensions/dimens_extension.dart';

class BlackButton extends StatefulWidget {
  const BlackButton({
    super.key,
    this.icon,
    this.width,
    required this.title,
    required this.onPressed,
  });

  final Widget? icon;
  final String title;
  final VoidCallback onPressed;
  final double? width;

  @override
  State<BlackButton> createState() => _BlackButtonState();
}

class _BlackButtonState extends State<BlackButton> {
  @override
  Widget build(BuildContext context) {
    final bool withIcon = widget.icon != null;

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: widget.onPressed,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(
              Radius.circular(
                context.dimens.borderRadius,
              ),
            ),
            color: Colors.black,
          ),
          //TODO: make width and height customizable
          // How to make button wrap the content?
          width: widget.width ?? 200,
          height: 50,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: withIcon
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (widget.icon != null) widget.icon!,
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        widget.title,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  )
                : Center(
                    child: Text(
                      widget.title,
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}
