// ignore_for_file: must_be_immutable, use_key_in_widget_constructors
import 'package:flutter/material.dart';
import 'package:demo/demoapp.dart';

void main() {
  runApp(DemoApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: "Demo App",
      home: Center(
          child: Text("Test Demo App",
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.white,fontSize: 20,decoration: TextDecoration.none)
          )
  )
    );
  }
}

class DemoAppTextField extends StatelessWidget{
  String titleInput;
  DemoAppTextField({required this.titleInput});

  final textFieldChange = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Demo App Text Field",
      home: Scaffold(
       body: Center(
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: <Widget>[
             Container(
               padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
               child: const TextField(
                 decoration: InputDecoration(
                     border: OutlineInputBorder(
                         borderRadius: BorderRadius.all(
                             Radius.circular(10)
                         )
                     ),
                     labelText: "Input key"
                 ),
               ),
             ),
             Text(titleInput)
           ],
         ),
       ),
      ),
    );
  }

}

