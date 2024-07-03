import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CallsTile extends StatelessWidget
{

  const CallsTile({super.key,
    this.imageUrl,
    required this.userName,
    required this.callType,
    required this.time,
    this.iconUrl});

  final String? imageUrl, iconUrl;
  final userName, callType, time;
  

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
                Text(callType, style: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal, fontSize: 14))
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
                  backgroundImage: NetworkImage(iconUrl!),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
