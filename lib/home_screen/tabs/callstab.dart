
import 'package:flutter/material.dart';
import 'package:tabarssample/dummydb.dart';
import 'package:tabarssample/home_screen/widgets/callstile.dart';
import 'package:tabarssample/home_screen/widgets/chatstile.dart';

class CallsTab extends StatelessWidget
{
  const CallsTab({super.key});

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
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQD86urkUDBKR5ZegqJiDNmEeOUHHXkz-4bhw&s"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Create call link", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                            //SizedBox(height: 5,),
                            Text("Share a link for your call", style: TextStyle(color: Colors.grey, fontSize: 12),)
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Text("Recent", style: TextStyle(color: Colors.black, fontSize: 14, fontWeight: FontWeight.bold),),
                ),
                SizedBox(height: 10,),
                ListView.separated(
                  scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        CallsTile(
                          imageUrl: Dummydb.callListData[index]["url"],
                          userName: Dummydb.callListData[index]["Name"],
                          callType: Dummydb.callListData[index]["callType"],
                          time: Dummydb.callListData[index]["time"],
                          iconUrl: Dummydb.callListData[index]["iconUrl"],

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
                    itemCount: 10)
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
