
import 'package:flutter/material.dart';
import 'package:tabarssample/dummydb.dart';
import 'package:tabarssample/home_screen/widgets/callstile.dart';
import 'package:tabarssample/home_screen/widgets/chatstile.dart';
import 'package:tabarssample/home_screen/widgets/grouptile.dart';
import 'package:tabarssample/home_screen/widgets/statustile.dart';

class GroupTab extends StatelessWidget
{
  const GroupTab({super.key});

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
                          radius: 20,
                          backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQR9qgqgkT8gkacFp1_k706ytbnkUiAshRJ1w&s"),
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
                          Text("New Community", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10,),
              // Container(
              //   padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              //   child: Text("RECENT UPDATES", style: TextStyle(color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal),),
              // ),
             // SizedBox(height: 10,),
              ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemBuilder: (context, index) =>
                      GroupTile(
                        imageUrl: Dummydb.groupListData[index]["url"],
                        userName: Dummydb.groupListData[index]["Name"],
                        lastMessage: Dummydb.groupListData[index]["lastMessage"],
                        time: Dummydb.groupListData[index]["time"],

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
                  itemCount: 3
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
