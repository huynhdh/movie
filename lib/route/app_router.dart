import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/ui/screen/detail/movie_detail_page.dart';
import 'package:movie/ui/screen/home/home_page.dart';
import 'package:movie/ui/screen/new_movie/new_movie_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(
  replaceInRouteName: 'Page|Screen,Route',
)
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: HomeRoute.page, path: '/home', initial: true),
        AutoRoute(page: MovieDetailRoute.page, path: '/movie-detail'),
        AutoRoute(page: NewMovieRoute.page, path: '/new-movie')
      ];
}
