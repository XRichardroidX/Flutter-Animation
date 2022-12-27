import 'package:flutter/material.dart';

class Item extends StatelessWidget {
  const Item({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 100),
            margin: EdgeInsets.fromLTRB(100, 0, 0, 90),
            child: Text(
              '',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(70)
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            margin: EdgeInsets.fromLTRB(0, 100, 10, 0),
            child: Text(
              'Animation 101',
              style: TextStyle(
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(70)
            ),
          ),
        ],
      ),
    );
  }
}
