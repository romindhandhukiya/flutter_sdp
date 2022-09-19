import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 167, 190, 202),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 38, 19, 88),
          title: Text('CHOOSE LOCATION '),
          centerTitle: true,
          elevation: 0,
        ),
        body: Text("Choose Your Location...."));
  }
}
