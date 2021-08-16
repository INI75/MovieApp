import 'package:flutter/material.dart';
import 'package:moviez/widgets/movie.dart';
import '../bluePrints/rowmovies.dart';

List<Rslide> mov = [
  Rslide(
    story: 'I just simply love this movie honestly especialy the peunguines',
    image: Image.asset('assets/mag.jpg'),
    title: 'Madagascar 3 ',
    rating: 5,
  ),
  Rslide(
    story:
        'Heros came but doent really know if they were heros sha just needed moives',
    image: Image.asset('assets/hero.jpg'),
    title: 'The Hero',
    rating: 3,
  ),
  Rslide(
    story: 'The untold war which took place at one time like that',
    image: Image.asset('assets/war.jpg'),
    title: 'Underworld wars',
    rating: 2,
  ),
  Rslide(
    story: 'Alvin and his bros are on a wonderful cruz just not with the ship ',
    image: Image.asset('assets/chipwrecked.jpg'),
    title: 'Chipwrecked',
    rating: 6,
  ),
  Rslide(
    story:
        'The day that went Boom yah not sure pipz would forget this reactment',
    image: Image.asset('assets/boom.jpg'),
    title: 'The Explosion',
    rating: 4,
  ),
  Rslide(
    story:
        'This movie makes me wish I had gadgets from the future, sure your gonna love it',
    image: Image.asset(
      'assets/rob.jpg',
    ),
    title: 'Meet The Robinsons',
    rating: 4.5,
  ),
  Rslide(
    story: 'Tha big M.U very nice follow up from the first film.',
    image: Image.asset('assets/mu.jpg'),
    title: 'Monsters University',
    rating: 5,
  ),
  Rslide(
    story:
        '"Am having a bad bad day humm Descpicable Me" yah that song is catchy',
    image: Image.asset('assets/dm2.jpg'),
    title: 'Despicable Me',
    rating: 5.2,
  ),
];

class HomePage extends StatelessWidget {
  static const route = '/homepage';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
          onPressed: null,
        ),
        actions: [
          Image.asset(
            'assets/crazy.jpg',
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(40, 20, 0, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //
            Text(
              'Hello link user',
              style: TextStyle(
                fontSize: 25,
                wordSpacing: 1,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            SizedBox(
              height: 9,
            ),
            //

            Text(
              'Book your favourite movie',
              style: TextStyle(
                fontSize: 18,
                color: Colors.black26,
              ),
            ), //
            SizedBox(
              height: 25,
            ),
            //
            Test(),

            // populer and see all

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Popular',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  }, // add button to go to column page of movies
                  child: Text(
                    'see all',
                    style: TextStyle(
                      fontSize: 15,
                      color: Colors.black26,
                    ),
                  ),
                ),
              ],
            ),

            Expanded(child: Test2()),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(40, 10, 30, 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.home),
              onPressed: () {},
              iconSize: 30,
              hoverColor: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.video_call),
              onPressed: () {},
              iconSize: 30,
              hoverColor: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.bookmark),
              onPressed: () {},
              iconSize: 30,
              hoverColor: Colors.black,
            ),
            IconButton(
              icon: Icon(Icons.person),
              onPressed: () {},
              iconSize: 30,
              hoverColor: Colors.black,
            ),
          ],
        ),
      ),
    );
  }
}

class Test2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: mov
            .map(
              (e) => GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyMovie.A(
                        story: e.story,
                        image: e.image,
                        title: e.title,
                        rating: e.rating,
                      ),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          alignment: Alignment.topLeft,
                          child: e.image,
                          width: 90,
                          height: 90,
                        ),
                        Column(
                          children: [
                            Text(
                              e.title,
                            ),
                            Text(
                              e.rating.toString(),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class Test extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: mov.map((e) {
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MyMovie.A(
                    story: e.story,
                    image: e.image,
                    title: e.title,
                    rating: e.rating,
                  ),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                  height: 300,
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft,
                        child: e.image,
                        height: 250,
                        width: 190,
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        e.title,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Movie rating ${e.rating}',
                        style: TextStyle(
                          fontSize: 10,
                          color: Colors.black26,
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )),
            ),
          );
        }).toList(),
      ),
    );
  }
}
