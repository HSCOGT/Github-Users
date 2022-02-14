import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:github_users/core/presentation/routes/app_router.gr.dart';
import 'package:github_users/core/shared/providers.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  await ref.read(sembastProvider).init();
  ref.read(dioProvider)
    ..options = BaseOptions(
      headers: {
        'Accept': 'application/vnd.github.v3.html+json',
      },
      validateStatus: (status) =>
          status != null && status >= 200 && status < 400,
    );
  return unit;
});

class AppWidget extends ConsumerWidget {
  final appRouter = AppRouter();

  AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen(initializationProvider, (_, __) {
      appRouter.pushAndPopUntil(
        const HomeRoute(),
        predicate: (route) => false,
      );
    });
    return MaterialApp.router(
      title: 'Repo Viewer',
      theme: _setUpThemeData(context),
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
    );
  }

  ThemeData _setUpThemeData(BuildContext context) {
    return ThemeData(
      primaryColor: Colors.grey.shade50,
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),
    );
  }
}
