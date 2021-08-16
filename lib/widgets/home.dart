import 'package:flutter/material.dart';
import 'package:moviez/provider/movie_provider.dart';
import 'package:moviez/widgets/movie.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  static const route = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      drawer: Drawer(),
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'Find movies Tv shows & More',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Expanded(
            child: HorizontalScrollView(),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, // add button to go to column page of movies
                  child: TextButton(
                    onPressed: () {},
                    child: Text('see all'),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 2,
            child: VerticalScrollView(),
          ),
        ],
      ),
    );
  }
}

class VerticalScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(MyMovie.route);
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 150,
            width: double.infinity,
            child: Row(
              children: [
                Expanded(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/mag.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Expanded(
                  flex: 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        'title',
                        style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'rating',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ]);
  }
}

class HorizontalScrollView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Provider.of<MovieProvider>(context, listen: false).getMovies(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Consumer<MovieProvider>(
            builder: (context, value, child) => ListView(
              children: [
                for (var i = 0; i < value.movies.length; i++)
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).pushNamed(MyMovie.route);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                          height: 250,
                          width: 150,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Expanded(
                                flex: 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    value.movies[i].poster,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 2,
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
                                  children: [
                                    SizedBox(height: 3),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        value.movies[i].title,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 3),
                                    Expanded(
                                      child: Text(
                                        value.movies[i].voteCount.toString(),
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 10,
                                          color: Colors.black26,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          )),
                    ),
                  ),
              ],
              scrollDirection: Axis.horizontal,
            ),
          );
        }
      },
    );
  }
}
