import 'package:flutter/material.dart';
import 'package:flutter_task/core/constants/colors.dart';

class InfoCard extends StatelessWidget {
  const InfoCard({
    super.key,
    required this.name,
    required this.email,
    required this.phone,
  });

  final String name;
  final String email;
  final String phone;

  @override
  Widget build(BuildContext context) {
    return Row(

      children: [
        CircleAvatar(radius: 40,backgroundColor: salmon,child: Icon(Icons.person,size: 40,color: terracotta,),),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Text(name,style: TextStyle(color: terracotta,fontWeight: FontWeight.bold),),
            Text(email,overflow: TextOverflow.ellipsis,style: TextStyle(color: terracotta,fontWeight: FontWeight.bold),),
            Text(phone,style: TextStyle(color: terracotta,fontWeight: FontWeight.bold),),
          ],
        ),
        Spacer(
          flex: 1,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.edit, size: 25,color: terracotta),
        )
      ],
    );
  }
}
