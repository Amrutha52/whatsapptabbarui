import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GroupTile extends StatelessWidget
{

  const GroupTile({super.key,
    this.imageUrl,
    required this.userName,
    required this.lastMessage,
    required this.time,
  });

  final String? imageUrl;
  final userName, time, lastMessage;


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
                Text(time, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14)),

              ],
            )
          ],
        ),
      ),
    );
  }
}