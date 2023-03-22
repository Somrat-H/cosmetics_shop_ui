import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

 customRow(String name){
   return Container(
     padding: const EdgeInsets.symmetric(horizontal: 10),
     child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
       children: [
       Text(name,style: const TextStyle(color: CupertinoColors.black,fontWeight: FontWeight.bold),),
       Text("For more >",style: TextStyle(color: Colors.grey.shade400),)
     ],),
   );
 }