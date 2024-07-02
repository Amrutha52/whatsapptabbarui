import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatsTile extends StatelessWidget
{

  const ChatsTile({super.key,
    this.imageUrl,
    required this.userName,
    required this.lastMessage,
    required this.time,
    required this.count});

  final String? imageUrl;
  final userName, lastMessage, time;
  final int count;

  @override
  Widget build(BuildContext context)
  {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(imageUrl!),
            ),
            SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(userName, style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 16),),
                Text(lastMessage, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14))
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(time),
                SizedBox(width: 5,),
                CircleAvatar(
                  radius: 10,
                  backgroundColor: Color(0xff23D566),
                  child: Text(count.toString(), style: TextStyle(fontSize: 10, color: Colors.white),),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
