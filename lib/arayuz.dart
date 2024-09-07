import 'package:flutter/material.dart';
import 'package:period/demopage.dart';
import 'package:period/main.dart';
import 'package:period/myprofile.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arayüz Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Arayüz Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purpleAccent ,
      ),
      body: Container(
        width: 500,
        height: 700,
        decoration: BoxDecoration(color: Colors.purpleAccent),
        child:  Column(
            children: [
              Image.asset("assets/images/period.png"),
              Text("This App Knows You",style: TextStyle(fontSize: 15,color: Colors.white,fontWeight: FontWeight.bold),),
              Image.asset("assets/images/regl.png",width: 300,height: 300,)
        ],
        ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          _tiklanan(index);
        },
        backgroundColor: Colors.purpleAccent,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.app_registration,color: Colors.white,),label: 'Registration'),
          BottomNavigationBarItem(icon: IconButton(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => const demopage()),);
              },
              icon: Icon(Icons.account_box,)
          ),label: 'Demo Page'),

        ],
      ),
    );
  }
  void _tiklanan(int value) {
    switch(value){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyTabbedPage()));
        break;
    }
  }
  void _demoya(int value) {
    switch(value){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>demopage()));
        break;
    }
  }
}
