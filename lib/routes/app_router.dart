import 'package:auto_route/auto_route.dart';

import 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: HomeRoute.page),
    AutoRoute(page: SavedRoute.page),
    AutoRoute(page: SubscriptionRoute.page),
    AutoRoute(page: RecipeAnalyzeRoute.page),
    AutoRoute(page: BarcodeRoute.page, initial: true),
    AutoRoute(page: MagicCookRoute.page),
    AutoRoute(page: AnalysisResultRoute.page),
  ];
}