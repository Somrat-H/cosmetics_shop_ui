
import 'package:flutter/material.dart';
// ignore: must_be_immutable
class DeatilsPage extends StatelessWidget {
  List<String> image;
  DeatilsPage({super.key,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 15, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Icon(Icons.arrow_back_ios, color: Colors.black,),
                    ),
                  ),
                  const Text('Catalouge', style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),),
                     Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.black26),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: const Center(child: Icon(Icons.filter_center_focus_outlined, color: Colors.black,)),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                     Text('Detect and', style: TextStyle(
                      color: Colors.black26,
                      fontSize: 16,
                      fontWeight: FontWeight.w500

                     ),),
                     Text('Buy Makeup', style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                       fontWeight: FontWeight.w700
                      
                     ),),
                  ],
        
                ),
                Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.black,
                  ),
                  child: const Icon(Icons.filter_list, color: Colors.white,),
                )
              ],),
              SizedBox(height: MediaQuery.of(context).size.height * .04,),
              Expanded(
                child: GridView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: image.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, 
                  
             
                crossAxisSpacing: 15,
                mainAxisSpacing:  15,
                 
                ), itemBuilder: ((context, index) {
                   return Container(
                      height: 230,
                      width: 120,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(image: AssetImage(image[index]), fit: BoxFit.fill),
                      ),
                    );
                })),
              ),
          
            ],
              ),
        )),
    );
  }
}