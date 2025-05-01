import 'package:flutter/material.dart';

class CatagoriesScreens extends StatelessWidget {
  const CatagoriesScreens({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pick your Catagory'),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          ),
        children: [
          Text('1',style: TextStyle(color: Colors.white),),
          Text('2',style: TextStyle(color: Colors.white)),
          Text('3',style: TextStyle(color: Colors.white)),
          Text('4',style: TextStyle(color: Colors.white)),
          Text('5',style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
