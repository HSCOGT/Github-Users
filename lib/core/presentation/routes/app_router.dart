import 'package:auto_route/auto_route.dart';
import 'package:github_users/core/presentation/home_page.dart';
import 'package:github_users/github/users/presentation/pages/searched_users_page.dart';
import 'package:github_users/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  routes: [
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: HomePage, path: '/home'),
    MaterialRoute(page: SearchedUsersPage, path: '/search'),
  ],
  replaceInRouteName: 'Page,Route',
)
class $AppRouter {}
