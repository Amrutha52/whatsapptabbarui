
import 'package:flutter/material.dart';
import 'package:tabarssample/dummydb.dart';
import 'package:tabarssample/home_screen/widgets/callstile.dart';
import 'package:tabarssample/home_screen/widgets/chatstile.dart';
import 'package:tabarssample/home_screen/widgets/statustile.dart';

class StatusTab extends StatelessWidget
{
  const StatusTab({super.key});

  @override
  Widget build(BuildContext context)
  {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Row(
                  children: [
                   Stack(
                     children: <Widget>[
                       CircleAvatar(
                         radius: 30,
                         backgroundImage: NetworkImage("https://images.pexels.com/photos/3866555/pexels-photo-3866555.png?auto=compress&cs=tinysrgb&w=600"),
                       ),
                       Positioned(
                           top: 40,
                         left: 40,
                         child: CircleAvatar(
                           backgroundColor: Colors.green,
                           radius: 10,
                           child: Icon(Icons.add, size: 20, ),
                         ),
                       )
                     ],
                   ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("My Status", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                          //SizedBox(height: 5,),
                          Text("Add to my status", style: TextStyle(color: Colors.grey, fontSize: 12),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text("RECENT UPDATES", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal),),
              ),
              SizedBox(height: 10,),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      StatusTile(
                        imageUrl: Dummydb.callListData[index]["url"],
                        userName: Dummydb.callListData[index]["Name"],
                        time: Dummydb.callListData[index]["time"],

                      ),
                  // Container(
                  //   height: 100,
                  //   color: Colors.red, ),
                  separatorBuilder: (context, index) =>
                      Divider(height: 0,
                        color: Colors.grey.shade300,
                        indent: 50,
                        endIndent: 30,
                      ),
                  itemCount: 10
              )
            ],
          ),
          // SingleChildScrollView(
          //   scrollDirection: Axis.vertical,
          //   child:
          // )
        ),
      ),
    );
  }
}
