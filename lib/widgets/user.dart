import 'package:flutter/material.dart';

//
class LogInView extends StatelessWidget {
  static const route = '/log';
  String username;
  String password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/2.jpg',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'please enter your User-name below',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: 'User-name',
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(gapPadding: 10),
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  onSubmitted: (value) {
                    username = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Please enter your password below ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(gapPadding: 10),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  onSubmitted: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      // put login logic
                      Navigator.popAndPushNamed(context, '/homepage');
                    },
                    child: Text('Log In'))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
//

//
class SignInView extends StatelessWidget {
  static const route = '/sign';
  String username;
  String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/2.jpg',
            fit: BoxFit.fill,
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'please enter your User-name below',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(gapPadding: 10),
                    hintText: 'User-name',
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  onSubmitted: (value) {
                    username = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Please enter your password below ',
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                SizedBox(
                  height: 15,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.blue,
                    border: OutlineInputBorder(gapPadding: 10),
                    hintText: 'Password',
                    hintStyle: TextStyle(fontStyle: FontStyle.italic),
                  ),
                  onSubmitted: (value) {
                    password = value;
                  },
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      // put login logic
                      // username;
                      // password;
                      Navigator.popAndPushNamed(context, '/homepage');
                    },
                    child: Text('Sign In '))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
