import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  // home is property and after : is its value widget.
  // Scaffold is widgets built in flutter sdk..Scaffold is one type of layout manager..
    home: Scaffold(
      appBar: AppBar(
        title: Text('HELLO FLUTTER...MY FIRST APP'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Text(
          'HELLO DDU',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.grey[600],
            fontFamily:'Pacifico-Regular'
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { }, //most required
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    ),
));
