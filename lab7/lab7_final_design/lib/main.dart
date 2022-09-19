import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: FinalTest1(),
    ));

class FinalTest1 extends StatelessWidget {
// const FinalTest1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 229, 212, 212),
      appBar: AppBar(
        title: Text('My Info'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 138, 24, 24),
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 60, 30, 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('images/profile.png')
            ),
            SizedBox(height: 10),
            Text(
              'NAME : ',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 7),
            Text(
              'ROMIN DHANDHUKIYA',
              style: TextStyle(
                color: Color.fromARGB(255, 10, 47, 103),
                letterSpacing: 2.0,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 40),
            Text(
              'AGE :',
              style: TextStyle(
                color: Colors.grey[800],
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 7),
            Text(
              '19',
              style: TextStyle(
                color: Color.fromARGB(255, 10, 47, 103),
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.email_rounded,
                  color: Color.fromARGB(255, 206, 38, 38),
                ),
                SizedBox(width: 12.0),
                Text(
                  '20ceubg088@ddu.ac.in',
                  style: TextStyle(
                    color: Color.fromARGB(255, 72, 43, 43),
                    fontSize: 16.0,
                    letterSpacing: 1.5,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
