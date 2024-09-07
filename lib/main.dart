import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:period/settings.dart';

import 'arayuz.dart';
void main(){
  runApp(MyTabbedPage());
}
class MyTabbedPage extends StatefulWidget {
  const MyTabbedPage({ super.key });  
  @override
  State<MyTabbedPage> createState() => _MyTabbedPageState();
}

class _MyTabbedPageState extends State<MyTabbedPage> with SingleTickerProviderStateMixin {
  static const List<Tab> myTabs = <Tab>[
    Tab(text: 'Register'),
    Tab(text: 'LogIn'),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: myTabs.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
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
        body: TabBarView(
          controller: _tabController,
          children: myTabs.map((Tab tab) {
            final String label = tab.text!;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Center(
                child: Column(
                  children: [
                    Text(
                      ' $label Page',
                      style: const TextStyle(fontSize: 36),
                    ),
                    TextFormField(decoration: InputDecoration(hintText: 'Mail'),),
                    TextFormField(decoration: InputDecoration(hintText: 'Password'),obscureText: true,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                              onPressed: (){},
                              icon: Image.asset('../assets/images/google.png',width: 30,height: 30,)),
                          IconButton(
                              onPressed: (){},
                              icon: Image.asset('../assets/images/facebook.png',width: 30,height: 30,)),
                          ElevatedButton.icon(onPressed: (){}, label:Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text('$label',style: TextStyle(color: Colors.white),),
                          ),style: ElevatedButton.styleFrom(backgroundColor: Colors.purpleAccent), icon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.login,color: Colors.white),
                          ),),
                        ],
                      ),
                    ),
                    Text('Are you register ?'),SizedBox(width: 30,),TextButton(onPressed: (){}, child: Text('$label Now')),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}