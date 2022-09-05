import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quizzer/result.dart';

import './quizapp.dart';

class Name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TextFieldScreen(),
    );
  }
}

class TextFieldScreen extends StatefulWidget {
  @override
  _textFieldScreenState createState() => _textFieldScreenState();
}

class _textFieldScreenState extends State<TextFieldScreen> {
  // final _controller = TextEditingController();
  TextEditingController _name = TextEditingController();
  String name = "";
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(name),
          Container(
            child: TextField(
              // controller: _controller,
              controller: _name,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: const BorderRadius.all(
                    const Radius.circular(30.0),
                  ),
                ),
                prefixIcon: Icon(Icons.people),
                hintText: 'Name',
              ),
              keyboardType: TextInputType.name,
            ),
            padding: EdgeInsets.all(32),
          ),
          Container(
              width: double.infinity,
              child: FloatingActionButton(
                  child: Text('Submit'),
                  focusColor: Color.fromARGB(255, 54, 158, 244),
                  onPressed: () {
                    /* setState(() {
                      name = _name.text;
                    });*/
                    Navigator.of(context).push(
                      MaterialPageRoute(
                          // Builder for the nextpage
                          // class's constructor.
                          builder: (context) => quizApp(
                                // Date as arguments to
                                // send to next page.
                                name: _name.text,
                              )),
                    );

                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => QuizApp(name)));
                  })),
        ],
      ),
    );
  }
}

quizApp({required String name}) {}
