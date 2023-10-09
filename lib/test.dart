// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       home: ChatScreen(),
// //     );
// //   }
// // }

// // class ChatScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: CustomScrollView(
// //         slivers: <Widget>[
// //           CustomAppBar(), // Custom SliverAppBar
// //           SliverList(
// //             delegate: SliverChildBuilderDelegate(
// //               (BuildContext context, int index) {
// //                 return ListTile(
// //                   leading: CircleAvatar(
// //                     child: Text("User $index"),
// //                   ),
// //                   title: Text("User $index"),
// //                   subtitle: Text("Message $index"),
// //                 );
// //               },
// //               childCount: 20,
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class CustomAppBar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return SliverAppBar(
// //       expandedHeight: 200.0,
// //       floating: false,
// //       pinned: true,
// //       flexibleSpace: FlexibleSpaceBar(
// //         title: Text("WhatsApp"),
// //         background: Image.network(
// //           "https://images.pexels.com/photos/255379/pexels-photo-255379.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
// //           fit: BoxFit.cover,
// //         ),
// //       ),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';

// void main() {
//   runApp(WhatsAppChatApp());
// }

// class WhatsAppChatApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'WhatsApp Chat UI',
//       home: WhatsAppChatScreen(),
//     );
//   }
// }

// class WhatsAppChatScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('WhatsApp Chat'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.more_vert),
//             onPressed: () {
//               // Add action here
//             },
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           Expanded(
//             child: ListView.builder(
//               itemCount: 20, // Replace with the actual number of messages
//               itemBuilder: (BuildContext context, int index) {
//                 // Replace this with message data
//                 String message = 'This is message $index';
//                 bool isCurrentUser = index % 2 == 0;

//                 return WhatsAppChatMessage(
//                   message: message,
//                   isCurrentUser: isCurrentUser,
//                 );
//               },
//             ),
//           ),
//           WhatsAppChatInput(),
//         ],
//       ),
//     );
//   }
// }

// class WhatsAppChatMessage extends StatelessWidget {
//   final String message;
//   final bool isCurrentUser;

//   WhatsAppChatMessage({
//     required this.message,
//     required this.isCurrentUser,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: isCurrentUser ? Alignment.centerRight : Alignment.centerLeft,
//       child: Container(
//         margin: EdgeInsets.all(8.0),
//         padding: EdgeInsets.all(12.0),
//         decoration: BoxDecoration(
//           color: isCurrentUser ? Colors.green : Colors.grey,
//           borderRadius: BorderRadius.circular(8.0),
//         ),
//         child: Text(
//           message,
//           style: TextStyle(
//             color: Colors.white,
//           ),
//         ),
//       ),
//     );
//   }
// }

// class WhatsAppChatInput extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.all(8.0),
//       child: Row(
//         children: [
//           Expanded(
//             child: TextField(
//               decoration: InputDecoration(
//                 hintText: 'Type a message...',
//               ),
//             ),
//           ),
//           IconButton(
//             icon: Icon(Icons.send),
//             onPressed: () {
//               // Handle sending the message
//             },
//           ),
//         ],
//       ),
//     );
//   }
// }

