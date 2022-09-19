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
      body: Row(
              children: [
                Expanded(
                child: Container(
                    padding: EdgeInsets.all(30.0),
                    color: Colors.amber[700],
                    child: Text('1'),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(30.0),
                  color: Color.fromARGB(255, 161, 37, 37),
                  child: Text('2'),
                ),
                Container(
                  padding: EdgeInsets.all(30.0),
                  color: Colors.green[800],
                  child: Text('3'),
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
