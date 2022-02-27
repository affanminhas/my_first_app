import 'package:flutter/material.dart';
import 'package:my_first_app/app_button.dart';
import 'package:my_first_app/textField.dart';

import 'signup_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SignUp(),
      debugShowCheckedModeBanner: false,
    );
  }
}



// appBar: AppBar(
//   title: ElevatedButton(
//     style: ButtonStyle(
//       backgroundColor: MaterialStateProperty.all(Colors.red)
//     ),
//     onPressed: (){
//       print("Hello there");
//     },
//     child: const Text("Click Here"),
//   )
// ),
// body: const Center(
//   child: Text("Affan Minhas", style: TextStyle(
//     fontSize: 30, color: Colors.red
//   ),),
// ),
