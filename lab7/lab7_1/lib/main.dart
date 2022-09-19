import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of layout manager..
  home: HomeScreen(),
));

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HELLO FLUTTER...MY LAB7'),
        centerTitle: true,  
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Image(

          // lab7_1 : INSERTING NETWORK IMAGE
          // image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQL9pMnxE0SskmvGHS3G-vlCUiN0TZHUcy931q7xFWE&s'),

          // lab7_2 : AssetImage :- to use images from project packages
          // image: AssetImage('assets/dog3.jpg'),
          // lab7_2 : AssetImage :- to use images from sub directory of project packages

          image: AssetImage('images/1.jpg'),
          height: 400,
          width: 300,
        ),

        // child: Text(
        //   'HELLO DDU',
        //   style: TextStyle(
        //     fontSize: 24.0,
        //     fontWeight: FontWeight.bold,
        //     letterSpacing: 2.0,
        //     color: Colors.grey[600],
        //     fontFamily:'Pacifico-Regular'
        //   ),
        // ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, //most required
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
