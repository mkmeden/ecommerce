import 'package:ecommerce/Models/shop.dart';
import 'package:flutter/material.dart';

class ShopFunctions extends ChangeNotifier {

  final List<Shop> products  = [
    Shop(
      name : 'Glasses',
      description : 'Lorem ipsldhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhagfghdkghldfhlkshgsdhljgldjkfhjlghlksj;jafkl;jskfjasl;fj;aldjfsum',
      price : 99.99
    ),
    Shop(
        name : 'Glasses',
        description : 'Lorem ipsum',
        price : 99.99
    ),
    Shop(
        name : 'Glasses',
        description : 'Lorem ipsum',
        price : 99.99
    ),
    Shop(
        name : 'Glasses',
        description : 'Lorem ipsum',
        price : 99.99
    )
  ] ;


  // user cart

List<Shop> cart = [];

// add to cart

void addToCart(Shop product)
{
  cart.add(product);
}

void removeFromCart(Shop product)
{
  cart.remove(product);
}

}