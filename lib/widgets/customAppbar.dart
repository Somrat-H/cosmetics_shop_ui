// ignore: file_names
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 180,
      decoration: const BoxDecoration(
          color: Color.fromRGBO(23, 24, 33, 1),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
      child: Column(
        children: [
          ListTile(
            leading: const CircleAvatar(
              backgroundImage: AssetImage(
                "assets/model4.jpg",
              ),
            ),
            title: Row(
              children: const[
                 Text("Hello,Rima  ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                 Icon(
                  Icons.waving_hand,
                  color: Colors.yellow,
                )
              ],
            ),
            subtitle:  const Text(
              "Let's choose a look",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid)),
                child: const Icon(
                  Icons.notifications_outlined,
                  color: Colors.grey,
                )),
          ),
          const SizedBox(height: 15,),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20),
            padding: const EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  // ignore: sort_child_properties_last
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.search_outlined,
                        color: Colors.grey.shade400,
                      ),
                      Text(
                        "Search products",
                        style: TextStyle(color: Colors.grey.shade400),
                      )
                    ],
                  ),
                  width: 130,
                ),
                Icon(Icons.filter_list_outlined,color: Colors.grey.shade400,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
