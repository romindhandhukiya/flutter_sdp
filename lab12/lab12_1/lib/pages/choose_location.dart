import 'package:flutter/material.dart';
import 'package:lab12_1/services/word_time.dart';
import 'package:flutter/rendering.dart';

class ChooseLocation extends StatefulWidget {
// const ChooseLocation({Key? key}) : super(key: key);
  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  int counter = 0;

  List<WordTime> locations = [
    WordTime(location: 'kolkata', flag: 'india.png', url: 'Asia/Kolkata'),
    WordTime(location: 'Manila', flag: 'philippine.png', url: 'Asia/Manila'),
    WordTime(location: 'Singapore', flag: 'singapore.jpeg', url: 'Asia/Singapore'),
    WordTime(location: 'Brisbane', flag: 'australia.jpg', url: 'Australia/Brisbane'),
    WordTime(location: 'Madrid', flag: 'spain.jpeg', url: 'Europe/Madrid'),
    WordTime(location: 'Vienna', flag: 'austria.jpeg', url: 'Europe/Vienna'),
    WordTime(location: 'Maldives', flag: 'maldives.jpg', url: 'Indian/Maldives'),
    WordTime(location: 'Johannesburg',flag: 'south africa.jpg',url: 'Africa/Johannesburg'),
    WordTime(location: 'Barbados', flag: 'barbados.jpg', url: 'America/Barbados'),
    WordTime(location: 'Costa_Rica',flag: 'costa-rica.jpeg',url: 'America/Costa_Rica'),
    WordTime(location: 'Jamaica', flag: 'jamaica.jpeg', url: 'America/Jamaica'),
    WordTime(location: 'Phoenix', flag: 'usa.png', url: 'America/Phoenix'),
    WordTime(location: 'Broken_Hill',flag: 'australia.jpg',url: 'Australia/Broken_Hill'),
    WordTime(location: 'Moscow', flag: 'russia.jpeg', url: 'Europe/Moscow'),
  ];

  void updateTime(index) async {
    WordTime instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'flag': instance.flag,
      'time': instance.time,
      'isDayTime': instance.isDayTime,
    });
  }

//   @override
//   Widget build(BuildContext context) {
//     //print("Inside Build");
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         title: Text('CHOOSE LOCATION'),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       body: ListView.builder(
//         itemCount: locations.length,
//         itemBuilder: (context, index) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
//             child: Card(
//               child: ListTile(
//                 onTap: () {
//                   // print(locations[index].location);
//                   // updatetime(index);
//                 },
//                 title: Text(locations[index].location.toString()),
//                 leading: CircleAvatar(
//                   backgroundImage:
//                       AssetImage('assets/flags/${locations[index].flag}'),
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }

//   // void getData() async {
//   //   await Future.delayed(Duration(seconds: 4), () {
//   //     print('UNIVERSITY NAME : DDU');
//   //   });
//   //   print('in getData ...after future call....');
//   //   await Future.delayed(Duration(seconds: 2), () {
//   //     print('DDU IS ONE OF THE BEST UNIVERSITY OF GUJARAT FOR COMPUTER ENGINEERING STUDY');
//   //   });
//   // }

//   // @override
//   // void initState() {
//   //   super.initState();
//   //   print("INIT STATE FUNCTION RUN");
//   //   print("before getdata");
//   //   getData();
//   //   print("after getdata");
//   // }

//   @override
//   Widget build(BuildContext context) {
//     // print("BUILD FUNCTION RUN");
//     return Scaffold(
//       backgroundColor: Colors.blueGrey[200],
//       appBar: AppBar(
//         backgroundColor: Colors.deepPurpleAccent,
//         title: Text('CHOOSE LOCATION '),
//         centerTitle: true,
//         elevation: 0,
//       ),
//       // body: ElevatedButton(
//       //   onPressed: () {
//       //     setState(() {
//       //       count += 1;
//       //     });
//       //   },
//       //   child: Text("Count : $count"),
//       // ),
//     );
//   }

@override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[200],
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text('CHOOSE LOCATION'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                  updateTime(index);
                },
                title: Text(locations[index].location.toString()),
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('images/flags/${locations[index].flag}'),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
