import 'package:flutter/material.dart';
import 'package:vititpoom_widget/app_screens/lab10/adding.dart';
import 'package:vititpoom_widget/app_screens/lab10/color_responses.dart';
import 'package:vititpoom_widget/app_screens/lab11/multi_question.dart';
import 'package:vititpoom_widget/app_screens/lab11/question_main.dart';

void main() {
  // WidgetsFlutterBinding.ensureInitialized();
  // // Step 3
  // SystemChrome.setPreferredOrientations([
  //   // DeviceOrientation.portraitUp,
  //   // DeviceOrientation.portraitDown,
  //   DeviceOrientation.landscapeLeft,
  //   DeviceOrientation.landscapeRight,
  // ]).then((value) => runApp(MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: const MultiQuestion()

        // const ColorResponsAndNextPage(
        //   choices: [
        //     'Khon Kean University',
        //     'Chulalongkorn University',
        //     'Chiang Mai University',
        //     'Mahidol University'
        //   ],
        //   question: 'Where is this picture?',
        //   title: 'Question 1',
        //   correct: [false, true, false, false],
        //   imageURL:
        //       'https://www.latrobe.edu.au/students/opportunities/exchange/partners/images/asia/Chulalongkorn-University.jpg/preview.jpg',
        // )

        );
  }
}

// class ItemCount extends StatefulWidget {
//   const ItemCount({super.key});

//   @override
//   State<ItemCount> createState() => _ItemCountState();
// }

// class _ItemCountState extends State<ItemCount> {
//   int count = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Item counter'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('$count', style: const TextStyle(fontSize: 45)),
//             GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     count++;
//                   });
//                 },
//                 child: Container(
//                   height: 20,
//                   width: 60,
//                   color: Colors.redAccent.withOpacity(0.2),
//                   child: const Text('Tap hear'),
//                 ))
//           ],
//         ),
//       ),
//     );
//   }
// }




  // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         debugShowCheckedModeBanner: false,
//         theme: ThemeData(
//           primarySwatch: Colors.red,
//         ),
//         home: const MyHomePage(title: 'Fav quote'));
//   }
// }

// class ItemCounter extends StatefulWidget {
//   const ItemCounter({super.key});

//   @override
//   State<ItemCounter> createState() => _ItemCounterState();
// }

// class _ItemCounterState extends State<ItemCounter> {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Pet App'),
//         ),
//         body: Center(
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: const [
//               // Padding(padding: EdgeInsets.all(30)),
//               Petname("Dog1",
//                   "https://www.humanesociety.org/sites/default/files/2022-10/dog-583007.jpg"),
//               Petname("Cat1",
//                   "https://upload.wikimedia.org/wikipedia/commons/thumb/3/3a/Cat03.jpg/1200px-Cat03.jpg"),
//               Petname("Cat2",
//                   "https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_square.jpg"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class Petname extends StatelessWidget {
//   final String name;
//   final String url;
//   const Petname(this.name, this.url, {super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Expanded(
//         child: Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         DecoratedBox(
//           decoration: const BoxDecoration(color: Colors.redAccent),
//           child: Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: Text(name),
//           ),
//         ),
//         Image(height: 100, width: 100, image: NetworkImage(url))
//       ],
//     ));
//   }
// }

/*Fav quote*/
// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});
//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: "Favorite Quote",
//       theme: ThemeData(
//         primarySwatch: Colors.red,
//       ),
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("My Favorite Quote"),
//         ),
//         body: Column(
//           // ignore: prefer_const_literals_to_create_immutables
//           children: [
//             const Padding(
//                 padding: EdgeInsets.only(
//               top: 20,
//             )),
//             const Image(
//                 height: 500,
//                 width: 500,
//                 image: NetworkImage(
//                     'https://images.unsplash.com/photo-1530036846422-afb4b7af2fd4?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=327&q=80')),
//             Container(
//               height: 75,
//               width: 250,
//               margin: const EdgeInsets.only(top: 50),
//               padding: const EdgeInsets.all(20),
//               decoration: BoxDecoration(
//                   color: Colors.redAccent,
//                   border: Border.all(color: Colors.black)),
//               child:
//                   const Text('James Healy', style: TextStyle(fontSize: 36.0)),
//             ),

//             // Row(
//             //   children: const [
//             //     Padding(padding: EdgeInsets.only(top: 100, left: 70)),
//             //     Expanded(
//             //         child: Text(
//             //       'James',q
//             //       style: TextStyle(
//             //         fontWeight: FontWeight.bold,
//             //         color: Colors.redAccent,
//             //         fontSize: 20,
//             //       ),
//             //     )),
//             //     Expanded(
//             //       child: Text(
//             //         'Healy',
//             //         style: TextStyle(
//             //           fontWeight: FontWeight.bold,
//             //           color: Colors.redAccent,
//             //           fontSize: 20,
//             //         ),
//             //       ),
//             //     )
//             //   ],
//             // )
//           ],
//         ),
//       ),
//     );
//   }
// }
