import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:movie/data/model/movie.dart';
import 'package:movie/ui/components/cached_image.dart';
import 'package:movie/ui/components/triangle_shape.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

@RoutePage()
class MovieDetailPage extends StatelessWidget {
  const MovieDetailPage({super.key, required this.movie});

  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(movie.title ?? ''),
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios),
            onPressed: () => AutoRouter.of(context).back(),
          )),
      body: Column(
        children: [
          Stack(alignment: AlignmentDirectional.bottomStart, children: [
            cachedNetworkImage(movie.banner ?? ''),
            ClipPath(
              clipper: TriangleClipper(),
              child: Container(
                color: Colors.white,
                height: 70,
              ),
            ),
            Positioned(
              bottom: 20,
              left: 20,
              child: Hero(
                tag: "movie",
                child: cachedNetworkImage(movie.poster ?? '', width: 100),
              ),
            ),
          ]),
          Container(
            margin: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 7,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        movie.title ?? '',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 24.0),
                        overflow: TextOverflow.fade,
                      ),
                      Text(movie.director ?? ''),
                    ],
                  ),
                ),
                Flexible(
                  flex: 3,
                  child: CircularPercentIndicator(
                    radius: 20.0,
                    lineWidth: 5.0,
                    percent: (movie.rating ?? 0) * 10 / 100,
                    center: Text('${movie.rating}'),
                    progressColor: Theme.of(context).colorScheme.primary,
                    backgroundColor:
                        Theme.of(context).colorScheme.primaryContainer,
                  ),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TextButton(
                  onPressed: () => {},
                  child: const Column(
                    children: [
                      Icon(Icons.comment),
                      Text("Reviews"),
                    ],
                  )),
              TextButton(
                  onPressed: () {},
                  child: const Column(
                    children: [
                      Icon(Icons.play_circle_fill),
                      Text("Trailers"),
                    ],
                  )),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  const Text(
                    'Genre',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(movie.genre ?? ''),
                ],
              ),
              Column(
                children: [
                  const Text(
                    'Release',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text(movie.year.toString()),
                ],
              ),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Text(movie.description ?? ''),
          ),
        ],
      ),
    );
  }
}
