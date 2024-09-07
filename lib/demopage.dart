import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:period/addnote.dart";
import "package:period/arayuz.dart";
import "package:period/myprofile.dart";
import "package:period/notifications.dart";
import "package:period/settings.dart";


void main() {
  runApp(const demopage());
}
class demopage extends StatelessWidget {
  const demopage({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Period Demo Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Period Demo Home Page'),
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
        actions: [
          IconButton(
              onPressed: (){},
              icon: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const MyApp()),);
                  },
                  icon: Icon(Icons.arrow_back_outlined,)
              ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Text("Demo Page"),
        ),
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const settings()),);
            },
            icon: Icon(Icons.settings,)
        ),
        backgroundColor: Colors.purpleAccent,
      ),
      body: Expanded(
            child: ListView(
              padding: const EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.pink[600],
                  child: const Center(child: Text('Daily Notes')),
                ),
                Container(
                  height: 50,
                  color: Colors.pink[400],
                  child: const Center(child: Text('Suggestions For You')),
                ),
                Container(
                  height: 50,
                  color: Colors.pink[200],
                  child: const Center(child: Text('Last 5 Days Of Ovulation')
                    ),
                ),
                Container(
                  height: 50,
                  color: Colors.pink[100],
                  child: const Center(child: Text('Your Dairy')
                  ),
                  //ALTA ALMAK İSTİYORUM AMA YAPAMADIM, SAYFA BAĞLAMADA SORUN
                ),
                  Container(
                  color: Colors.purpleAccent[700],
                  child: Row(
                    children: [
                  Image.asset("..//assets/images/calendar.png",width: 400,height: 400,alignment: Alignment.center,),
                  ]
                  )
                  ),
              ],
            ),
          ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index){
          _notif(index);
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.white,size: 20,),
            label: 'Notifications',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest,color: Colors.white,size: 20,),
            label: 'Suggestions',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
    icon: IconButton(
    onPressed: (){
    Navigator.push(context, MaterialPageRoute(builder: (context) => const addnote()));
    },
    icon: Icon(Icons.add,)
    ),
              label: 'Demo Page'),
          BottomNavigationBarItem(
            icon: Icon(Icons.today,color: Colors.white,size: 20,),
            label: 'Today',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
          icon: IconButton(
          onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context) => const myprofile())
            );
          },
            icon: Icon(Icons.account_box,)
        ),
      label: 'Demo Page'),

        ],
      ),

    );
  }
  void _tikla(int value) {
    switch(value){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>myprofile()));
        break;
    }
  }
  void _cacik(int value) {
    switch(value){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
        break;
    }
  }
  void _notif(int value) {
    switch(value){
      case 0:
        Navigator.push(context, MaterialPageRoute(builder: (context)=>notifications()));
        break;
    }
  }
}
