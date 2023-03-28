import 'dart:math';

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
  late PageController _pageController =
      PageController(initialPage: _currentPage, viewportFraction: 0.7,keepPage: true);
  int _currentPage = 0;
  @override
  void initState() {
    _pageController;
    // TODO: implement initState
    super.initState();
  }

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
            Expanded(
           flex: 5,
             // width: 400,
              child: PageView.builder(
                  physics: ScrollPhysics(),
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: model.length,
                  itemBuilder: (context, index) => AnimatedBuilder(
                      animation: _pageController,
                      builder: (context, child) {
                        double value = 0.0;
                        if (_pageController.position.haveDimensions) {
                          value =
                              index.toDouble() - (_pageController.page ?? 0);
                          value = (value * 0.038).clamp(-1, 1);
                          print("value $value index $index");
                        }
                        return Transform.rotate(
                          angle: pi * value,
                          child: InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          DetailsPage(image: model)));
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              margin: EdgeInsets.symmetric(horizontal: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          model[index],
                                      ),
                                      fit: BoxFit.cover,alignment: Alignment.center),
                                 ),
                            ),
                          ),
                        );
                      })),
            ),
            const SizedBox(height: 10),

            customRow("Product Catagory"),
            const SizedBox(height: 10),
            Expanded(
              flex: 2,
              child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: catagory.length,
                  itemBuilder: (context, index) => InkWell(
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(image: foundation)));
                          }
                          if (index == 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(image: lipstick)));
                          }
                          if (index == 2) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(image: eyeshadow)));
                          }
                          if (index == 3) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        DetailsPage(image: maskara)));
                          }
                        },
                        child: Container(
                          padding: const EdgeInsets.only(left: 10),
                          height: 100,
                          width: 100,
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Image.asset(
                                  items[index],
                                  fit: BoxFit.cover,
                                  height: 80,
                                ),
                              ),
                              Text(
                                catagory[index],
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.grey,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_bag), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Home"),
          ]),
    );
  }
}
