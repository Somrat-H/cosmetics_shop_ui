import 'package:flutter/material.dart';

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
          Container(height: 100,
          width: double.infinity,
          decoration: BoxDecoration(color: Color.fromRGBO(23, 24, 33, 1),
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(10))
          ),
          ),
        ],
      ),
    );
  }
}
