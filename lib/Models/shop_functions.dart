import 'package:ecommerce/Models/shop.dart';
import 'package:flutter/material.dart';

class ShopFunctions extends ChangeNotifier {

  final List<Shop> products  = [
    Shop(
      name : 'Glasses',
      description : 'Lorem ipsum',
      price : 99.99,
      imagePath: 'assets/glasses.jpg'
    ),
    Shop(
        name : 'Shoes',
        description : 'Lorem ipsum',
        price : 99.99,
        imagePath: 'assets/shoes.jpg'

    ),
    Shop(
        name : 'Bag',
        description : 'Lorem ipsum',
        price : 99.99,
        imagePath: 'assets/bag.jpg'

    ),
    Shop(
        name : 'Hoodie',
        description : 'Lorem ipsum',
        price : 99.99,
        imagePath: 'assets/hooide.jpg'

    )
  ] ;


  // user cart

List<Shop> cart = [];

// add to cart

void addToCart(Shop product)
{
  cart.add(product);
  notifyListeners();
}

void removeFromCart(Shop product)
{
  cart.remove(product);
  notifyListeners();
}

}