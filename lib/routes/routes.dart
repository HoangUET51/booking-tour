part of 'routes_imports.dart';

@AutoRouterConfig(replaceInRouteName: "Screen,Page")
class AppRouter extends $AppRouter {
  @override
  RouteType get defaultRouteType => RouteType.material();

  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: BookingApp.page, path: "/", initial: true),
        AutoRoute(page: BookingDetail.page, path: "/detail"),
      ];
}
