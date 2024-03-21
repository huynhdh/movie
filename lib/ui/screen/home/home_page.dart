import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/route/app_router.dart';
import 'package:movie/ui/components/cached_image.dart';
import 'package:movie/ui/screen/home/home_page_view_model.dart';

@RoutePage()
class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final homeViewModel = ref.read(homeViewModelProvider);
    final movies =
        ref.watch(homeViewModelProvider.select((value) => value.movies));

    if (movies == null) {
      homeViewModel.refresh();
    }

    var router = AutoRouter.of(context);

    return Hero(
      tag: "movie",
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text('Popular'),
          actions: [
            IconButton(
              icon: const Icon(Icons.create),
              onPressed: () {
                router.push(const NewMovieRoute());
              },
            ),
          ],
        ),
        body: Center(
            child: movies == null
                ? const CircularProgressIndicator()
                : RefreshIndicator(
                    onRefresh: homeViewModel.refresh,
                    child: ListView.builder(
                      itemCount: movies.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                            leading:
                                cachedNetworkImage(movies[index].poster ?? ''),
                            title: Text(movies[index].title ?? ''),
                            subtitle: Text(movies[index].director ?? ''),
                            onTap: () => router
                                .push(MovieDetailRoute(movie: movies[index])));
                      },
                    ),
                  )),
      ),
    );
  }
}
