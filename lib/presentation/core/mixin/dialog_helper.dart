import 'package:flutter/material.dart';

mixin DialogHelper {
  Future<T?> showMessageDialog<T>({
    required BuildContext context,
    required String message,
    Key? key,
    List<Widget>? actions,
  }) {
    return showDialog(
      context: context,
      builder: (ctx) {
        return AlertDialog(
          key: key,
          alignment: Alignment.center,
          backgroundColor: Colors.white,
          elevation: 0,
          shadowColor: Colors.transparent,
          titleTextStyle: Theme.of(ctx).textTheme.headlineMedium!.copyWith(
                fontSize: 20,
              ),
          title: const Center(
            child: Text(
              'Any Question?',
            ),
          ),
          contentTextStyle: Theme.of(ctx).textTheme.headlineSmall!.copyWith(
                fontSize: 16,
              ),
          content: Text(
            message,
            textAlign: TextAlign.center,
          ),
          actions: [
            if (actions != null) ...actions,
            Padding(
              padding: const EdgeInsets.only(
                top: 20,
                bottom: 10,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                    topLeft: Radius.circular(24),
                  ),
                  color: Theme.of(ctx)
                      .dialogTheme
                      .backgroundColor!
                      .withOpacity(0.3),
                ),
                child: TextButton(
                  onPressed: Navigator.of(ctx).pop,
                  child: Text(
                    'Nuts is ...',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
