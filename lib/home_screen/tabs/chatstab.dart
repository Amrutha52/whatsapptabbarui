
import 'package:flutter/material.dart';
import 'package:tabarssample/dummydb.dart';
import 'package:tabarssample/home_screen/widgets/chatstile.dart';

class ChatsTab extends StatelessWidget
{
  const ChatsTab({super.key});

  @override
  Widget build(BuildContext context)
  {
    return ListView.separated(
        itemBuilder: (context, index) =>
        ChatsTile(
          imageUrl: Dummydb.chatListData[index]["url"],
          userName: Dummydb.chatListData[index]["Name"],
          lastMessage: Dummydb.chatListData[index]["lastMessage"],
          time: Dummydb.chatListData[index]["time"],
          count: Dummydb.chatListData[index]["count"],

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
        itemCount: 10);
  }
}
