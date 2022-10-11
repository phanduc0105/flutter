import 'package:flutter/material.dart';

class DemoApp extends StatefulWidget{
  const DemoApp({super.key});


  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemoApp();
  }
}

class _DemoApp extends State<DemoApp> with WidgetsBindingObserver{
  @override
  Widget build(BuildContext context) {
    final editText1 = TextEditingController();
    final editText2 = TextEditingController();

    @override
    void initState() {
      super.initState();
      WidgetsBinding.instance.addObserver(this);
    }

    @override
    void dispose() {
      editText1.dispose();
      editText2.dispose();
      WidgetsBinding.instance.removeObserver(this);
      super.dispose();
    }

    @override
    void didChangeAppLifecycleState(AppLifecycleState state){
      super.didChangeAppLifecycleState(state);

      //Background mode
      if(state == AppLifecycleState.paused){

      }else{

      }
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
                  controller: editText1,
                  onChanged: (text){
                    editText2.text = text;
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
                  controller: editText2,
                  onTap: (){
                    String text2Temp = editText2.text;
                    editText1.text = "";
                    editText2.text = text2Temp;
                  },
                  decoration: const InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                              Radius.circular(10)
                          )
                      ),
                      labelText: "Input key 3"
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