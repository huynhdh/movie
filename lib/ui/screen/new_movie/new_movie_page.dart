import 'dart:ffi';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:movie/ui/screen/new_movie/new_movie_view_model.dart';

@RoutePage()
class NewMoviePage extends StatelessWidget {
  const NewMoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('Create new movie'),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            leading: IconButton(
              icon: const Icon(Icons.arrow_back_ios),
              onPressed: () => AutoRouter.of(context).back(),
            )),
        body: const SafeArea(
            child: Padding(padding: EdgeInsets.all(20), child: MovieForm())));
  }
}

class MovieForm extends ConsumerStatefulWidget {
  const MovieForm({super.key});

  @override
  MovieFormState createState() => MovieFormState();
}

class MovieFormState extends ConsumerState<MovieForm> {
  final _formKey = GlobalKey<FormState>();
  final _titleController = TextEditingController();
  final _yearController = TextEditingController();
  final _directorController = TextEditingController();
  final _genreController = TextEditingController();
  final _ratingController = TextEditingController();
  final _posterController = TextEditingController();
  final _bannerController = TextEditingController();
  final _descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var router = AutoRouter.of(context);

    final newMovieViewModel = ref.watch(newMovieViewModelProvider);

    return Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            TextFormField(
              controller: _titleController,
              decoration: const InputDecoration(labelText: 'Title'),
            ),
            TextFormField(
              controller: _yearController,
              decoration: const InputDecoration(labelText: 'Year'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _directorController,
              decoration: const InputDecoration(labelText: 'Director'),
            ),
            TextFormField(
              controller: _genreController,
              decoration: const InputDecoration(labelText: 'Genre'),
            ),
            TextFormField(
              controller: _ratingController,
              decoration: const InputDecoration(labelText: 'Rating'),
              keyboardType: TextInputType.number,
            ),
            TextFormField(
              controller: _posterController,
              decoration: const InputDecoration(labelText: 'Poster URL'),
            ),
            TextFormField(
              controller: _bannerController,
              decoration: const InputDecoration(labelText: 'Banner URL'),
            ),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  newMovieViewModel.addMovie(_bannerController.text,
                      _posterController.text, _descriptionController.text,
                      genre: _genreController.text,
                      rating: double.parse(_ratingController.text),
                      title: _titleController.text,
                      year: int.parse(_yearController.text),
                      director: _titleController.text);
                  router.popForced("/");
                }
              },
              child: const Text('Submit'),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: router.popForced, child: const Text('Cancel'))
          ],
        ),
      ),
    );
  }
}
