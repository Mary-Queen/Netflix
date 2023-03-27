// library stack_screen.dart;

// import 'package:flutter/material.dart';

// /// A stateless widget that renders `StackScreen`.
// class StackScreen extends StatelessWidget {
//   const StackScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBodyBehindAppBar: true,
//       appBar: AppBar(
//         elevation: 0,
//         automaticallyImplyLeading: true,
//         backgroundColor: Colors.transparent,
//       ),
//       body: Column(
//         children: [
//           Container(
//             width: double.infinity,
//             height: 190,
//             margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             decoration: BoxDecoration(
//               color: const Color(0eeeeee),
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Stack(
//               children: [
//                 Row(
//                   children: [
//                     SizedBox(
//                       height: double.infinity,
//                       width: 160,
//                       child: ClipRRect(
//                         borderRadius: const BorderRadius.only(
//                           topLeft: Radius.circular(10),
//                           bottomLeft: Radius.circular(10),
//                         ),
//                         child: Image.asset(
//                           'assets/chef-guy.png',
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                     Expanded(
//                       child: Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             const Text(
//                               'Spider man',
//                               style: TextStyle(
//                                   fontSize: 18, fontWeight: FontWeight.w600),
//                             ),
//                             const Text(
//                               'Drama, Science fiction, Superhero, action movie, fantasy',
//                               style: TextStyle(
//                                 fontSize: 16,
//                                 fontWeight: FontWeight.w400,
//                                 height: 1.4,
//                               ),
//                             ),
//                             Text(
//                               'Time: 2.10h',
//                               style: TextStyle(
//                                   fontSize: 14, color: Colors.grey.shade700),
//                             ),
//                             Text(
//                               '2023',
//                               style: TextStyle(
//                                   fontSize: 14, color: Colors.grey.shade700),
//                             ),
//                             const Text(
//                               'Subscribe',
//                               style: TextStyle(
//                                   fontSize: 14, color: Colors.purpleAccent),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//                 //
//                 Positioned(
//                   top: 0,
//                   right: 0,
//                   child: Container(
//                     width: 50,
//                     height: 50,
//                     color: Colors.white,
//                     child: Icon(Icons.favorite),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
