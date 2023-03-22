<<<<<<< HEAD
import 'package:cosmetics_shop_ui/screen/details_page.dart';
import 'package:cosmetics_shop_ui/server.dart';
=======
import 'package:cosmetics_shop_ui/screen/homePage.dart';
>>>>>>> 008ec98ef06ce05ddfea0df93df99a1dd1d7df01
import 'package:flutter/material.dart';
class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(23, 24, 33, 1),
      body: SafeArea(
        child: Column(children: [
          Container(
            
            height: MediaQuery.of(context).size.height * .80,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(image: AssetImage('images/cover.png')),

            ),
           
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => DeatilsPage(image: model,)));
              },
              child: GestureDetector(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>HomePage()));},
                child: Container(
                  height:   MediaQuery.of(context).size.height * .08,
                  width: MediaQuery.of(context).size.height * .25,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                  ),
                   child: const Center(child: Text('Get Started', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                   ),)),
                ),
              ),
            ),
          )
        ],),
      )
    );
  }
}