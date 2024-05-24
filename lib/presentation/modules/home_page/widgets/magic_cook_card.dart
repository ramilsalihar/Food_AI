import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MagicCookCard extends StatelessWidget {
  const MagicCookCard({
    super.key,
    required this.title,
    required this.description,
    required this.onPressed,
  });

  final String title;
  final String description;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: 160,
          width: 340,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(32)),
            color: theme.canvasColor,
          ),
          child: Row(
            children: [
              ClipRRect(
                child: SvgPicture.asset(
                  'assets/vectors/hand_with_tray.svg',
                  fit: BoxFit.cover,
                  height: 160,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, left: 12, right: 12),
                  child: Column(
                    children: [
                      Text(
                        title,
                        style: theme.textTheme.headlineLarge,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8),
                        child: Text(
                          description,
                          style: theme.textTheme.headlineSmall,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
