import 'package:flutter/material.dart';

class Checked extends StatefulWidget {
 final Image e;
  Checked(this.e);
  @override
  _CheckedState createState() => _CheckedState(e);
}

class _CheckedState extends State<Checked> {
  Image e;
  _CheckedState(this.e);

  bool pick = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 50,
          width: 90,
          child: e,
        ),
        Checkbox(
          value: pick,
          onChanged: (bool k) {
            //
            setState(() {
              pick = k;
            });

            //
          },
        )
      ],
    );
  }
}
