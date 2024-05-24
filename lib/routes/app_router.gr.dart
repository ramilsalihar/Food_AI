// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:food_ai/presentation/modules/analyze_page/analysis_result_page.dart'
    as _i1;
import 'package:food_ai/presentation/modules/analyze_page/barcode_page.dart'
    as _i2;
import 'package:food_ai/presentation/modules/analyze_page/recipe_analyze_page.dart'
    as _i5;
import 'package:food_ai/presentation/modules/home_page/home_page.dart' as _i3;
import 'package:food_ai/presentation/modules/magic_cook_page/magic_cook_page.dart'
    as _i4;
import 'package:food_ai/presentation/modules/saved_page/saved_page.dart' as _i6;
import 'package:food_ai/presentation/modules/subscription_page/subscription_page.dart'
    as _i7;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    AnalysisResultRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.AnalysisResultPage(),
      );
    },
    BarcodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.BarcodePage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    MagicCookRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.MagicCookPage(),
      );
    },
    RecipeAnalyzeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.RecipeAnalyzePage(),
      );
    },
    SavedRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.SavedPage(),
      );
    },
    SubscriptionRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.SubscriptionPage(),
      );
    },
  };
}

/// generated route for
/// [_i1.AnalysisResultPage]
class AnalysisResultRoute extends _i8.PageRouteInfo<void> {
  const AnalysisResultRoute({List<_i8.PageRouteInfo>? children})
      : super(
          AnalysisResultRoute.name,
          initialChildren: children,
        );

  static const String name = 'AnalysisResultRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.BarcodePage]
class BarcodeRoute extends _i8.PageRouteInfo<void> {
  const BarcodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          BarcodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'BarcodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.MagicCookPage]
class MagicCookRoute extends _i8.PageRouteInfo<void> {
  const MagicCookRoute({List<_i8.PageRouteInfo>? children})
      : super(
          MagicCookRoute.name,
          initialChildren: children,
        );

  static const String name = 'MagicCookRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.RecipeAnalyzePage]
class RecipeAnalyzeRoute extends _i8.PageRouteInfo<void> {
  const RecipeAnalyzeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RecipeAnalyzeRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecipeAnalyzeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.SavedPage]
class SavedRoute extends _i8.PageRouteInfo<void> {
  const SavedRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SavedRoute.name,
          initialChildren: children,
        );

  static const String name = 'SavedRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i7.SubscriptionPage]
class SubscriptionRoute extends _i8.PageRouteInfo<void> {
  const SubscriptionRoute({List<_i8.PageRouteInfo>? children})
      : super(
          SubscriptionRoute.name,
          initialChildren: children,
        );

  static const String name = 'SubscriptionRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
