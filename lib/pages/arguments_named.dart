import 'package:flutter/material.dart';



// class MyApp extends StatelessWidget {
  
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       onGenerateRoute: ((settings) {
//         if(settings.name==PassArgumentsScreen.routeName){
//           final ScreenArguments args= settings.arguments;
//           return MaterialPageRoute(builder: (context){
//             return PassArgumentsScreen(
//               title: args.title,
//               message: args.message,
//             );
//           },
//           );
//         }
//         assert(false,'Implementation ${settings.name}');
//         return null;
//       }
//       ),
//       title: 'Arguments in named routes',
//       home:HomeScreen(),
//       routes: {
//         ExtractArgumentsScreen.routeName: (context) =>
//         ExtractArgumentsScreen(),
         
//       }
      
//     );
//   }
// }
// class HomeScreen extends StatelessWidget {
 
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Named arguments'),
//         backgroundColor: Colors.green,

//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               child:Text('Extracts Arguments'),
//               style:ButtonStyle(
//                 backgroundColor: MaterialStateProperty.all<Color>(Colors.green),

//               ),
//               onPressed: (){
//                 Navigator.pushNamed(
//                   context, ExtractArgumentScreen.routeName,
//                   arguments: ScreenArguments('Extract Arguments Screen','Extracted in the build method'),
//                   );
//               },
//             ),
//             ElevatedButton(
             
//                child: Text('Accepts arguments'),
//                style: ButtonStyle(
//                  backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
//                ),
//                onPressed: (){
//                  Navigator.pushNamed(
//                    context,
//                     PassArgumentsScreen.routeName,
//                     arguments: ScreenArguments(
//                       'Accept Arguments Screen',
//                       'Extracted in the onGenerateRoute function.',
//                     ),
//                     );
//                },
//                )
//           ],
//         )
//         ),
//     );
//   }
// }
// class ExtractArgumentsScreen extends StatelessWidget {
//   static const routeName ='/extractArguments';
//   @override
//   Widget build(BuildContext context) {
//     final Arguments args =ModalRoute.of(context)!.settings.arguments;

//     return Scaffold(
//       appBar: AppBar(
//         title: Text(args.title),
//       ),
//       body: Text(args.message),
//     );
//   }
// }
// class PassArgumentsScreen extends StatelessWidget {
//  static const routeName ='/passArguments';

//  final String title;
//  final String message;

//  const PassArgumentsScreen(
//     this.title,
//    this.message,

//  ); 

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(title),
//       ),
//       body: Center(
//         child:Text(message),
//       ),
//     );
//   }
// }
// class ScreenArguments{
//   final String title_bar;
//   final String text_message;

//   ScreenArguments(
//     this.title_bar,
//     this.text_message,
//   );

// }