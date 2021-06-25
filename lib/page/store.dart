import 'package:flutter/material.dart';
import 'package:store_pp/widget/card_generate_item.dart';
import 'package:store_pp/widget/shop_bottom_navigator.dart';

class Store extends StatefulWidget {
  const Store({Key key}) : super(key: key);

  @override
  _StoreState createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Store",style: TextStyle(color: Colors.black54)),
          centerTitle: true,
          leading: Icon(Icons.arrow_back,color: Colors.black54,),
          backgroundColor: Colors.white,
          elevation: 0,

          actions: [
            IconButton(icon: Icon(Icons.map, color: Colors.black54,))

          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 15,
          children: List.generate(10, (int position) {return generateItem();}),

          ),
        ),
        bottomNavigationBar: ShopBottomNavigator(),
        floatingActionButton: FloatingActionButton(backgroundColor: Colors.red[900],
        child: Icon(Icons.add),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),

    );
  }
}

