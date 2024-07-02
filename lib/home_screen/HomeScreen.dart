import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tabarssample/home_screen/tabs/chatstab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff075E54),
          title: Text("WhatsApp", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
          actions: [
            IconButton(onPressed: (){},icon: Icon(Icons.search), color: Colors.white,),
            IconButton(onPressed: (){}, icon: Icon(Icons.more_vert), color: Colors.white,)
          ],
          bottom: TabBar(

            unselectedLabelColor: Colors.white54,
              labelColor: Colors.white,
              indicatorColor: Colors.white,
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorWeight: 3,
             //isScrollable: true, // scrolling behavior kodukkan pattum
             // dividerHeight: 0, // means oru underline varunathe povum
              //indicator: BoxDecoration(color: Colors.redAccent, borderRadius: BorderRadius.circular(10)), // Indicator background color varum
              tabs: [

            Tab(child: Icon(Icons.group, color: Colors.white,),),
            Tab(child: Text("Chats"),),
            Tab(child: Text("Calls"),),
            Tab(child: Text("Status"),),
          ]),
        ),
        body: TabBarView(
           // physics: NeverScrollableScrollPhysics(), swipe cheythal marilla. click cheythale marullu
            children: [
          Container(color: Colors.red,),
          ChatsTab(),
          Container(color: Colors.amber,),
          Container(color: Colors.blue,),
        ])
      ),
    );
  }
}
