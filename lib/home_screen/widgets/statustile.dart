import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatusTile extends StatelessWidget
{

  const StatusTile({super.key,
    this.imageUrl,
    required this.userName,
    required this.time,
   });

  final String? imageUrl;
  final userName, time;


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

              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(time),

              ],
            )
          ],
        ),
      ),
    );
  }
}