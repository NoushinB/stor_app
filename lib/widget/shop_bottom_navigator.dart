import 'package:flutter/material.dart';

class ShopBottomNavigator extends StatelessWidget {
  const ShopBottomNavigator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 60,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Icon(Icons.person_outline),
              ],
            ),),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width/2-20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.search),
                Icon(Icons.shopping_basket),
              ],
            ),),

          ],
        ),
      ),
      shape: CircularNotchedRectangle(),
      notchMargin: 10,
      clipBehavior: Clip.antiAlias,
    );
  }
}
