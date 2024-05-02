import 'package:ecommerce/Models/shop_functions.dart';
import 'package:ecommerce/Screens/cart_page.dart';
import 'package:ecommerce/Screens/landing.dart';
import 'package:ecommerce/Screens/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Models/shop.dart';

class CartButton extends StatelessWidget {

  final ShopFunctions value;
  final int index;
  final void Function() onTap;
  final Icon icon ;
  CartButton({required this.value , required this.onTap, required this.icon, required this.index});
  @override
  Widget build(BuildContext context) {

    final palette =Theme.of(context).colorScheme;

    return GestureDetector(
      onTap:onTap,
      child: Container(

        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: icon,
        ),
        decoration: BoxDecoration(
            color: palette.primary,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: palette.secondary , width: 3)

        ),

      ),
    );
  }
}
