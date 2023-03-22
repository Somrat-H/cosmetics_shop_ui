import 'package:cosmetics_shop_ui/screen/details_page.dart';
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
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppbar(),
            const SizedBox(height: 15),
            customRow("Catagory"),
            const SizedBox(height: 10),
      
            SizedBox(height: 200,
            width: 400,
            child: ListView.builder(
      
              shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: model.length,
                itemBuilder: (context,index)=>InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilsPage(image: model)));
                  },
                  child: Container(
                            padding: const EdgeInsets.all(10),
                            decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(model[index],width: 400,fit: BoxFit.cover,),
                          ),
                )),),
            const SizedBox(height: 25),
            customRow("Product Catagory"),
            const SizedBox(height: 10),
            SizedBox(
              height: 130,
              child:    ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catagory.length,
                  itemBuilder: (context,index)=>InkWell(
                    onTap: () {
                      if(index==0){ Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilsPage(image: foundation)));}
                      if(index==1){ Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilsPage(image: lipstick)));}
                      if(index==2){ Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilsPage(image: eyeshadow)));}
                      if(index==3){ Navigator.push(context, MaterialPageRoute(builder: (context)=> DeatilsPage(image: maskara)));}
                     
                    },
                    child: Container(
                      padding: const EdgeInsets.only(left: 10),
                      height: 100,
                      width: 100,
                      child: Column(
                        children: [
                          ClipRRect(
                            child: Image.asset(items[index],fit: BoxFit.cover,height: 80,),
                          ),
                          Text(catagory[index],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ))
              ,),
      
          ],
        ),
      ),
      
 
      
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const[
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.shopping_bag),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
         BottomNavigationBarItem(icon: Icon(Icons.favorite),label: "Home"),

      ]),
    );
  }
}
