import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moviez/widgets/checkOut.dart';

//

class MyMovie extends StatelessWidget {
  static const route = '/film';

  Image image;
  String title;
  double rating;
  String story;
  int seat;

  MyMovie.A(
      {@required this.image,
      @required this.title,
      @required this.rating,
      @required this.story});
  MyMovie();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        //
        title: Text(
          title,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),

        actions: [
          IconButton(
              icon: Icon(
                Icons.favorite_sharp,
                color: Colors.orangeAccent,
              ),
              onPressed: () {})
        ],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        //
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: image,
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              height: 300,
              width: 250,
            ),
            SizedBox(
              height: 25,
            ),
            Center(
              child: Text(
                'Rating Number' + rating.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        DateFormat(DateFormat.YEAR_MONTH_DAY)
                            .format(DateTime.now()),
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text('Date', style: TextStyle(color: Colors.grey))
                    ]),
                //
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      DateFormat(DateFormat.HOUR).format(DateTime.now()),
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    Text('Hour', style: TextStyle(color: Colors.grey))
                  ],
                ),
                //
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Assigned Seat',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Seat No',
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      IconButton(
                          icon: Icon(Icons.keyboard_arrow_right_outlined),
                          onPressed: () {
                            // DropdownMenuItem(
                            //   child: SingleChildScrollView(child: ,),
                            // );
                          })
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),

            //

            //

            Container(
              width: double.infinity,
              child: Text(
                'Synopsis',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            //
            // write each movie storey
            Text(
              story,
              style: TextStyle(
                color: Colors.grey,
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    Text('price'),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Checkout(
                                image: image,
                                rating: rating,
                                story: story,
                                title: title,
                              )),
                    );
                    //
                  },
                  child: Text('Booking'),
                ),
              ],
            ),
          ],
        ),
        //
      ),
    );
  }
}
