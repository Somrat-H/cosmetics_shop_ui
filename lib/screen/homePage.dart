import 'package:flutter/material.dart';

import '../server.dart';
import '../widgets/customAppbar.dart';
import '../widgets/customRow.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomAppbar(),
          SizedBox(height: 10),
          customRow("Catagory"),
          SizedBox(height: 10),

          SizedBox(height: 200,
          width: 400,
          child: ListView.builder(

            shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: model.length,
              itemBuilder: (context,index)=>Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(model[index],width: 400,fit: BoxFit.cover,),
          )),),

          customRow("Product Catagory"),
          SizedBox(height: 10),
          

          SizedBox(
            height: 130,
            child:    ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: catagory.length,
                itemBuilder: (context,index)=>Container(
                  padding: EdgeInsets.only(left: 10),
                  height: 100,
                  width: 100,
                  child: Column(
                    children: [
                      ClipRRect(
                        child: Image.asset(items[index],fit: BoxFit.cover,height: 80,),
                      ),
                      Text(catagory[index],style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                    ],
                  ),
                ))
            ,),

        ],
      ),
      
 
      
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Home"),

      ]),
    );
  }
}
