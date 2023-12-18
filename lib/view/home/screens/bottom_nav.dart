// // ignore_for_file: library_private_types_in_public_api

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:pandabar/pandabar.dart';
// import 'package:shopify/res/colors.dart';

// class BottomNav extends StatefulWidget {
//   const BottomNav({super.key});

//   @override
//   _BottomNavState createState() => _BottomNavState();
// }

// class _BottomNavState extends State<BottomNav> {
//   String page = 'Blue';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       extendBody: true,
//       bottomNavigationBar: PandaBar(
//         fabIcon: Icon(Icons.document_scanner_outlined),
//         buttonSelectedColor: mainColor,
//         buttonData: [
//           PandaBarButtonData(
//             id: 'Home',
//             icon: Icons.home_filled,
//             title: 'Home',
//           ),
//           PandaBarButtonData(
//             id: 'wishlist',
//             icon: Icons.favorite_border,
//             title: 'wishlist',
//           ),
//           PandaBarButtonData(
//             id: 'cart',
//             icon: Icons.shopping_bag_outlined,
//             title: 'cart',
//           ),
//           PandaBarButtonData(
//             id: 'Account',
//             icon: Icons.person_2_outlined,
//             title: 'Account',
//           ),
//         ],
//         onChange: (id) {
//           setState(() {
//             page = id;
//           });
//         },
//         onFabButtonPressed: () {
//           showCupertinoDialog(
//               context: context,
//               builder: (context) {
//                 return CupertinoAlertDialog(
//                   content: Text('Fab Button Pressed!'),
//                   actions: <Widget>[
//                     CupertinoDialogAction(
//                       child: Text('Close'),
//                       isDestructiveAction: true,
//                       onPressed: () {
//                         Navigator.pop(context);
//                       },
//                     )
//                   ],
//                 );
//               });
//         },
//       ),
//       body: Builder(
//         builder: (context) {
//           switch (page) {
//             case 'wishlist':
//               return Container(color: Colors.green.shade500);
//             case 'Home':
//               return Container(color: Colors.blue.shade900);
//             case 'cart':
//               return Container(color: Colors.red.shade900);
//             case 'Account':
//               return Container(color: Colors.yellow.shade700);
//             default:
//               return Container();
//           }
//         },
//       ),
//     );
//   }
// }
