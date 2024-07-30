import 'package:bookly_app/core/constants/durations.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:bookly_app/features/splash/presentation/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const String kHomeView = '/homeView';
  static const String kBookDetailsView = '/bookDetailsView';
  static const String kSearchView = '/searchView';
  static GoRouter router = GoRouter(
    routes: [
      // splash view
      GoRoute(path: '/', builder: (context, state) => const SplashView()),

      // home view
      GoRoute(
        path: kHomeView,
        pageBuilder: (context, state) {
          return CustomTransitionPage(
            child: const HomeView(),
            transitionDuration: AppDurations.kTransitionDuration,
            transitionsBuilder:
                (context, animation, secondaryAnimation, child) {
              return FadeTransition(
                opacity: CurveTween(curve: Curves.easeIn).animate(animation),
                child: child,
              );
            },
          );
        },
      ),

      // book details view
      GoRoute(
          path: kBookDetailsView,
          builder: (context, state) => const BookDetailsView()),

      // search view
      GoRoute(
          path: kSearchView, builder: (context, state) => const SearchView()),
    ],
  );
}
