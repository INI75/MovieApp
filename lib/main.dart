import 'package:flutter/material.dart';
import 'package:moviez/provider/movie_provider.dart';
import 'package:moviez/widgets/home.dart';
import 'package:moviez/widgets/movie.dart';
import 'package:provider/provider.dart';
import 'widgets/user.dart';

void main() {
  runApp(Movie());
}

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: MovieProvider()),
      ],
      child: MaterialApp(
        home: HomePage(),
        debugShowCheckedModeBanner: false,
        routes: {
          LogInView.route: (_) => LogInView(),
          SignInView.route: (_) => SignInView(),
          HomePage.route: (_) => HomePage(),
          MyMovie.route: (_) => MyMovie(),
        },
      ),
    );
  }
}
