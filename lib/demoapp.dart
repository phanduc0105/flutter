import 'package:flutter/material.dart';

class DemoApp extends StatefulWidget{
  const DemoApp({super.key});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemoApp();
  }
}

class _DemoApp extends State<DemoApp>{
  @override
  Widget build(BuildContext context) {

    String _key;
    final myController = TextEditingController();

    @override
    void initState() {
      super.initState();

    }

    @override
    void dispose() {
      myController.dispose();
      super.dispose();
    }

    // TODO: implement build
    return MaterialApp(
      title: "DemoApp",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Demo App"),
          titleTextStyle: const TextStyle(fontSize: 20,color: Colors.green), backgroundColor: Colors.amberAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: TextField(
                  onChanged: (text){
                    myController.text = text;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      labelText: "Input key"
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: TextField(
                  controller: myController,
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      labelText: "Input key 2"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}