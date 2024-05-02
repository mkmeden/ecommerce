import 'package:ecommerce/Models/shop_functions.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Models/shop_functions.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    final palette =Theme.of(context).colorScheme;


    return Consumer<ShopFunctions>(
      builder: (context, value , child) {

        double priceTotal = 0 ;

        for(var val in value.cart)
          {
            priceTotal += val.price;
          }


        return Scaffold(
          floatingActionButton: Container(
            width: 200,
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
              backgroundColor: Colors.blue,
              onPressed: () {  },
              child: Text('Pay Rs ${double.parse(priceTotal.toString()).toStringAsFixed(2)}' ,
              style: TextStyle(
                color: Colors.white
              ),
              ),

            ),
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
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

                Expanded(
                  child: ListView.builder(
                    itemCount: value.cart.length,
                      shrinkWrap: true,

                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            tileColor: palette.primary,
                            leading: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                                child: Image.asset(value.cart[index].imagePath)

                            ),
                            title: Text(value.cart[index].name ,
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold
                                      ),
                            ),
                            subtitle: Text(value.cart[index].price.toString()),
                            trailing: IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: (){
                                value.removeFromCart(value.cart[index]);
                              },
                            ),

                          ),
                        );
                      }),
                ) ,


              ],
            ),
          ),
        );
      }
    );
  }
}
