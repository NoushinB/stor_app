import 'package:flutter/material.dart';

Card generateItem() {
  return Card(
    elevation: 4,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(40))),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 90,
            width: 90,
            child: Image.network("https://www.ikea.com/cz/en/images/products/smycka-artificial-flower-rose-red__0902944_pe596726_s5.jpg?f=xl"),
          ),
          Text(
            "Price",
            style: TextStyle(fontSize: 16, color: Colors.red[900]),
          ),
          Text(
            "Title",
            style: TextStyle(fontSize: 16, color: Colors.black87),
          ),
        ],
      ),
    ),
  );
}
