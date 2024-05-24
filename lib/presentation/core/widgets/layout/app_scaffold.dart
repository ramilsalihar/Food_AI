import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppScaffold extends Scaffold {
  AppScaffold({
    super.key,
    super.appBar,
    Widget? body,
    Widget? background,
    Widget? bottom,
    super.floatingActionButton,
    super.floatingActionButtonLocation,
    super.floatingActionButtonAnimator,
    super.persistentFooterButtons,
    super.persistentFooterAlignment,
    super.drawer,
    super.onDrawerChanged,
    super.endDrawer,
    super.onEndDrawerChanged,
    super.bottomNavigationBar,
    super.bottomSheet,
    super.backgroundColor = Colors.red,
    super.resizeToAvoidBottomInset = true,
    super.primary = true,
    super.drawerDragStartBehavior,
    super.extendBody = false,
    super.extendBodyBehindAppBar = true,
    super.drawerScrimColor,
    super.drawerEdgeDragWidth,
    super.drawerEnableOpenDragGesture = true,
    super.endDrawerEnableOpenDragGesture = true,
    super.restorationId,
  }) : super(
          body: Stack(
            fit: StackFit.expand,
            children: [
              SvgPicture.asset(
                'assets/background.svg',
                fit: BoxFit.cover,
              ),
              if(body != null) body
            ],
          ),
        );
}
