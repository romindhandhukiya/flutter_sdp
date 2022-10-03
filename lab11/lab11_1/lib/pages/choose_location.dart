import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int count = 0;
  // void getData() async {
  //   await Future.delayed(Duration(seconds: 4), () {
  //     print('UNIVERSITY NAME : DDU');
  //   });
  //   print('in getData ...after future call....');
  //   await Future.delayed(Duration(seconds: 2), () {
  //     print('DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY');
  //   });
  // }

  // @override
  // void initState() {
  //   super.initState();
  //   print("INIT STATE FUNCTION RUN");
  //   print("before getdata");
  //   getData();
  //   print("after getdata");
  // }

  @override
  Widget build(BuildContext context) {
    // print("BUILD FUNCTION RUN");
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION '),
        centerTitle: true,
        elevation: 0,
      ),
      // body: ElevatedButton(
      //   onPressed: () {
      //     setState(() {
      //       count += 1;
      //     });
      //   },
      //   child: Text("Count : $count"),
      // ),
    );
  }
}
