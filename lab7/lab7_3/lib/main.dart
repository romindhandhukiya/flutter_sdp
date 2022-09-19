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
        title: Text('Row and Column Layout'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 67, 31, 113),
      ),
      body: // only for padding purpose....
          // instead of container we can directly used the padding widget...
          // it can't support marging, color..etc....
          // // for both and other we can use container widget
          //     Padding(
          //       padding: EdgeInsets.all(40),
          //       child: Text('HELLO -> only padding'),
          // ),

          //   Container(
          //   // padding is the inside space management of component
          //     padding: EdgeInsets.symmetric(vertical: 40.0,horizontal: 60.0),
          //     // EdgeInsets.fromLTRB(30, 40, 50, 60),
          //     // EdgeInsets.all(20),
          //     // margin is outside-surround space management of component
          //     margin: EdgeInsets.all(50),
          //     color: Color.fromARGB(255, 178, 160, 195),
          //     child: Text('Hello'),
          // ),

          //   Row(
          //     children: [
          //       Text('HELLO ROW'),
          //       TextButton(
          //         onPressed: () {},
          //         child: Text('press me'),
          //       ),
          //       Container(
          //         color: Colors.cyanAccent,
          //         padding: EdgeInsets.all(30.0),
          //         child: Text('inside container'),
          //       ),
          //     ],
          // ),

          Column(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        // mainAxisAlignment: MainAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // crossAxisAlignment: CrossAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        // crossAxisAlignment: CrossAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.baseline, // may generate error....
        children: [
          // Text('HELLO ROW'),
          // TextButton(
          //   onPressed: () {},
          //   child: Text('press me'),
          // ),
          Row(
              // children: [
              //   Text('hello ddu,... '),
              //   Text(' ...Hello 5th sem students....')
              // ],
              ),
          Container(
            color: Colors.deepOrange[800],
            padding: EdgeInsets.all(30.0),
            child: Text('inside container 1'),
          ),
          Container(
            color: Colors.limeAccent,
            padding: EdgeInsets.all(50.0),
            child: Text('inside container 2'),
          ),
          Container(
            color: Colors.green[800],
            padding: EdgeInsets.all(70.0),
            child: Text('inside container 3'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {}, // must required property...
        // making change at here to test hot reloading..click --> clickme---> Click and ctrl + s
        child: Text('Click'),
        backgroundColor: Color.fromARGB(255, 53, 53, 168),
      ),
    );
  }
}
