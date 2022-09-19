import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
// home is property and after : is its value widget.
// Scaffold is widgets built in flutter sdk..Scaffold is one type of layout manager..
      home: HomeScreen(),
    ));

// making your own custom stateless widget....
// used in Hot reload and also useful in reuse...DRY feature
class HomeScreen extends StatelessWidget {
// const test1({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gallery icon button'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 69, 49, 109),
      ),

      /// icon //////////////////
      // body: Center(
      //   child: Icon(
      //     Icons.flutter_dash,  
      //     color: Color.fromARGB(255, 9, 85, 17),
      //     size: 90.0,
      //   )
      // ),

      //// button widget /////////////////////
      // body: Center(
      //   child: ElevatedButton(
      //     child: Text('button'),
      //     onPressed: () {},
      //     style: ElevatedButton.styleFrom(
      //         primary: Color.fromARGB(255, 14, 8, 69),
      //         padding: EdgeInsets.symmetric(horizontal: 60, vertical: 10),
      //         textStyle: TextStyle(fontSize: 30, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic)),
      //   ),
      // ),

      ////flat button ////////////////////  
      // body: Center(
      //   child: FlatButton(
      //     onPressed: () {
      //     print('print on consol');
      //   },
      //   child: Text('click Me'),
      //   color: Colors.blue,
      //   ),
      // ),

      ////// mail icon //////////
      ////print msg on console /////////////////
      // body: Center(
      //   child: IconButton(
      //     icon: Icon(
      //       Icons.mail_outline_sharp,
      //       size: 40.0,
      //     ),
      //     color: Color.fromARGB(255, 209, 45, 45),
      //     tooltip: 'send mail me',
      //     onPressed: () {
      //       print('on console print');
      //     },
      //   ),
      // ),

      //////gallery icon button ////////////////
      // body: Center(
      //   child: TextButton.icon(
      //     icon: Icon(
      //       Icons.photo_camera,
      //       color: Color.fromARGB(255, 30, 42, 83),
      //       size: 60.0,
      //     ),
      //     label: Text(
      //       "Gallery",
      //       style: TextStyle(
      //         color: Colors.black,
      //         fontSize: 40.0,
      //         letterSpacing: 1.0,
      //         backgroundColor: Color.fromARGB(64, 57, 54, 54),
      //       ),
      //       textAlign: TextAlign.start,
      //     ),
      //     onPressed: () {},
      //   ),
      // ),

      body: Center(
        child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextButton.icon(
              icon: Icon(
                Icons.photo_camera,
                color: Color.fromARGB(255, 30, 42, 83),
                size: 60.0,
              ),
              label: Text(
                "Gallery",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 40.0,
                  letterSpacing: 2.0,
                  backgroundColor: Color.fromARGB(255, 213, 164, 164),
                ),
                textAlign: TextAlign.start,
              ),
              onPressed: () {},
            )),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
        // making change at here to test hot reloading..click --> clickme---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Color.fromARGB(255, 57, 130, 160),
      ),
    );
  }
}
