import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Welcome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/7.JPEG',
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'WELCOME TO',
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white38,
                ),
              ),
              SizedBox(
                height: 12,
              ),
              Text(
                '  EPIC \nMoviez\n  {^_^}',
                style: TextStyle(
                    fontSize: 50,
                    color: Colors.white54,
                    fontWeight: FontWeight.bold,
                    wordSpacing: 3,
                    fontStyle: FontStyle.italic),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/sign');
                     
                    },
                    child: Text('Sign'),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/log');
                    },
                    child: Text('Log in'),
                  )
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
