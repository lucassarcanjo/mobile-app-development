// import 'package:flutter/material.dart';
// import 'package:login/components/navbar.dart';
// // import 'package:login/login_page.dart';
// import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

// void main() {
//   runApp(MaterialApp(
//     title: 'Flutter Demo',
//     theme: ThemeData(
//       primarySwatch: Colors.blue,
//       visualDensity: VisualDensity.adaptivePlatformDensity,
//     ),
//     home: Scaffold(
//       appBar: AppBar(
//         title: const Text(MyApp.title),
//       ),
//       bottomNavigationBar: SalomonBottomBar(
//         currentIndex: 0,
//         // onTap: (i) => setState(() => _currentIndex = i),
//         items: [
//           /// Home
//           SalomonBottomBarItem(
//             icon: const Icon(Icons.home),
//             title: const Text("Home"),
//             selectedColor: Colors.purple,
//           ),

//           /// Likes
//           SalomonBottomBarItem(
//             icon: const Icon(Icons.favorite_border),
//             title: const Text("Likes"),
//             selectedColor: Colors.pink,
//           ),

//           /// Search
//           SalomonBottomBarItem(
//             icon: const Icon(Icons.search),
//             title: const Text("Search"),
//             selectedColor: Colors.orange,
//           ),

//           /// Profile
//           SalomonBottomBarItem(
//             icon: const Icon(Icons.person),
//             title: const Text("Profile"),
//             selectedColor: Colors.teal,
//           ),
//         ],
//       ),
//     ),
//   ));
//   // runApp(MyApp());
// }

import 'package:flutter/material.dart';
import 'package:login/src/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );
    // return MaterialApp(
    //   title: 'Flutter Demo',
    //   home: const Text("Hello Lucas 2"),
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //     visualDensity: VisualDensity.adaptivePlatformDensity,
    //   ),
    // );
  }
}
