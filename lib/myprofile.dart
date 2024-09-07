import "dart:ui";

import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:flutter/widgets.dart";
import "package:period/arayuz.dart";
import "package:period/demopage.dart";
import "package:period/settings.dart";


void main() {
  runApp(const myprofile());
}
class myprofile extends StatelessWidget {
  const myprofile({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Period Demo Page',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MyProfile Demo Home Page'),
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

        backgroundColor: Colors.purpleAccent,
        actions: [
          IconButton(
            onPressed: (){},
            icon: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const demopage()),);
                },
                icon: Icon(Icons.arrow_back_outlined,)
            ),
          ),
        ],
        title: Padding(
          padding: const EdgeInsets.all(120.0),
          child: Text("My Profile"),
        ),
        leading: IconButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  settings()),);
            },
            icon: Icon(Icons.settings,)
        ),
      ),
      body: ListView(
        children:[ Container(color: Colors.purple[300],
          width: 1000, height: 100,
          child: Row(
            children: [
            CircleAvatar(backgroundImage: AssetImage("..//assets/images/kadin.png"),minRadius: 30,backgroundColor: Colors.green,foregroundColor: Colors.green,),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text("Hayriye Bulut",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Spacer(),
              IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.notifications,)
              ),
              Row(children: [
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.format_color_text_outlined,)
                ),
                IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.forward,)
                ),
              ],
              ),
            ],
          ),
        ),
      Row(children: [Container(color: Colors.purple[200],
        width: 500, height: 100,
        child: ListView(
          children:[ 
            Row(
          children: [
            Icon(Icons.compare_arrows),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text("My Goal"),
              ),
             ],
            ),
            Row(children:
              [
              Container(child: Text("Track My Period"),width: 100,height: 40,color: Colors.green[100],),
                Container(child: Text("Try To Conceive"),width: 100,height: 40,color: Colors.green[200],),
                Container(child: Text("Track My Pregnancy"),width: 100,height: 40,color: Colors.green[300],),
              ],
            ),
           ]
        ),
      )
      ],
         ),
          Row(children: [Container(color: Colors.purple[200],
            width: 500, height: 100,
            child: ListView(
                children:[
                  Row(
                    children: [
                      Icon(Icons.cyclone),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Text("My Cycles"),
                      ),
                    ],
                  ),
                  Row(children:
                  [
                    Container(child: Text("4 Days Average Period"),width: 100,height: 40,color: Colors.green[100],),
                    Container(child: Text("28 Days Average Cycles"),width: 100,height: 40,color: Colors.green[200],),
                  ],
                  ),
                ]
            ),
          )
          ],
          ),
          Row(children: [
          Container(color:Colors.pink[200],
            child:Row(
              children: [
                IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
                IconButton(onPressed: (){}, icon: Icon(Icons.electric_bolt),iconSize: 84,),
                IconButton(onPressed: (){}, icon: Icon(Icons.monitor_weight_outlined),iconSize: 84,),
                IconButton(onPressed: (){}, icon: Icon(Icons.transfer_within_a_station),iconSize: 84,),
                IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
              ],
            ),
          )

          ],
          ),
          Row(

            children: [

            IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
            IconButton(onPressed: (){}, icon: Icon(Icons.electric_bolt),iconSize: 84,),
            IconButton(onPressed: (){}, icon: Icon(Icons.monitor_weight_outlined),iconSize: 84,),
            IconButton(onPressed: (){}, icon: Icon(Icons.transfer_within_a_station),iconSize: 84,),
            IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
          ],
          ),
          Row(

            children: [

              IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.electric_bolt),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.monitor_weight_outlined),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.transfer_within_a_station),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
            ],
          ),
          Row(

            children: [

              IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.electric_bolt),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.monitor_weight_outlined),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.transfer_within_a_station),iconSize: 84,),
              IconButton(onPressed: (){}, icon: Icon(Icons.bloodtype),iconSize: 84,),
            ],
          ),
        ]
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications,color: Colors.white,size: 20,),
            label: 'Notifications',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_suggest,color: Colors.white,size: 20,),
            label: 'Suggestions',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle,color: Colors.white,size: 30,),
            label: 'Add',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.today,color: Colors.white,size: 20,),
            label: 'Today',backgroundColor: Colors.purpleAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_add,color: Colors.white,size: 20,),
            label: 'Add Note',backgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
