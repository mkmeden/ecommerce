import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final palette =Theme.of(context).colorScheme;


    return Scaffold(
      backgroundColor: palette.background,
      appBar: AppBar(
        elevation: 0,

        backgroundColor: palette.background,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Cart' ,
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold
            ),

            ),

            Text('Check your cart before paying',
            style: TextStyle(
              color: palette.inversePrimary
            ),
            ),


          ],
        ),
      ),
    );
  }
}
