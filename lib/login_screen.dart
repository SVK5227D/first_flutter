import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text('Signup'),
            backgroundColor: Colors.green,
          ),
          body: Container(child: SignupForm())),
    );
  }
}

class SignupForm extends StatelessWidget {
  SignupForm({super.key});

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'First Name :',
                hintText: '@example(Cristiano)'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextField(
            obscureText: true,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Last Name :',
                hintText: '@example(Ronaldo)'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Email ID :',
                hintText: '@example(xyz@gmail.com)'),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Username : ',
              hintText: '@example(xyz0301)',
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          child: TextField(
            obscureText: true,
            enableSuggestions: false,
            autocorrect: false,
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password :',
                hintText: '@example(xyz@123)'),
          ),
        ),
        TextButton(onPressed: null, child: Text('Submit'))
      ],
    );
  }
}
