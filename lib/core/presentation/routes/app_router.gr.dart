// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../../github/users/presentation/pages/searched_users_page.dart'
    as _i3;
import '../../../splash/presentation/splash_page.dart' as _i1;
import '../home_page.dart' as _i2;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomePage());
    },
    SearchedUsersRoute.name: (routeData) {
      final args = routeData.argsAs<SearchedUsersRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.SearchedUsersPage(
              key: args.key, searchTerm: args.searchTerm));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(HomeRoute.name, path: '/home'),
        _i4.RouteConfig(SearchedUsersRoute.name, path: '/search')
      ];
}

/// generated route for [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for [_i2.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(name, path: '/home');

  static const String name = 'HomeRoute';
}

/// generated route for [_i3.SearchedUsersPage]
class SearchedUsersRoute extends _i4.PageRouteInfo<SearchedUsersRouteArgs> {
  SearchedUsersRoute({_i5.Key? key, required String searchTerm})
      : super(name,
            path: '/search',
            args: SearchedUsersRouteArgs(key: key, searchTerm: searchTerm));

  static const String name = 'SearchedUsersRoute';
}

class SearchedUsersRouteArgs {
  const SearchedUsersRouteArgs({this.key, required this.searchTerm});

  final _i5.Key? key;

  final String searchTerm;
}
