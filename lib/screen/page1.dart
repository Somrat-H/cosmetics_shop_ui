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
          )
        ],),
      )
    );
  }
}