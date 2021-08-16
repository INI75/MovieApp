import 'dart:math';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:moviez/widgets/checkBox.dart';

class Checkout extends StatelessWidget {
  List pay = [
    Image.asset('assets/Visa.png'),
    Image.asset('assets/PayPal.png'),
    Image.asset('assets/amazon.png'),
    Image.asset('assets/apay.png'),
  ];

  int seat = Random().nextInt(100);
  double price = (Random().nextDouble() * 100);
  final Image image;
  final String title;
  final double rating;
  final String story;

  Checkout({
    @required this.story,
    @required this.image,
    @required this.title,
    @required this.rating,
  });

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
        title: Text(
          'Checkout',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: image,
                    height: 150,
                    width: 130,
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        // gen  action, adventure etc
                      ],
                    ),
                  ),
                )
              ],
            ),
            //

            //

            SizedBox(
              height: 20,
            ),
            //
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
                            seat.toString(),
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

            //
            SizedBox(
              height: 15,
            ),

            //
            Text(
              'Payment Method',
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            //
            SizedBox(
              height: 10,
            ),
//
            Checked(pay[0]),
            Checked(pay[1]),
            Checked(pay[2]),
            Checked(pay[3]),
//
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.popAndPushNamed(context, '/homepage');
                  },
                  child: Text('Pay - \$${price.toStringAsFixed(2)}')),
            )
          ],
        ),
      ),
    );
  }
}
