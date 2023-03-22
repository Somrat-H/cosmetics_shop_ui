import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(
          color: Color.fromRGBO(23, 24, 33, 1),
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(10),
          )),
      child: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(
                "assets/model4.jpg",
              ),
            ),
            title: Row(
              children: [
                Text("Hello,Rima  ",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.w500)),
                Icon(
                  Icons.waving_hand,
                  color: Colors.yellow,
                )
              ],
            ),
            subtitle: Text(
              "Let's choose a look",
              style: TextStyle(color: Colors.grey),
            ),
            trailing: Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                        color: Colors.grey, style: BorderStyle.solid)),
                child: Icon(
                  Icons.notifications_outlined,
                  color: Colors.grey,
                )),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            padding: EdgeInsets.symmetric(horizontal: 10),
            height: 50,
            decoration: BoxDecoration(
                color: Colors.grey.shade700,
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
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
