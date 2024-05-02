import 'package:ecommerce/components/myDrawer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Models/shop_functions.dart';
import 'package:ecommerce/components/cartButton.dart';

class Shopping extends StatefulWidget {
  const Shopping({super.key});

  @override
  State<Shopping> createState() => _ShoppingState();
}

class _ShoppingState extends State<Shopping> {
  @override



  Widget build(BuildContext context) {
    final palette =Theme.of(context).colorScheme;



    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor:palette.background ,
      ),
      backgroundColor: palette.background,
      drawer: MyDrawer(),
      body: Consumer<ShopFunctions>(
        builder: (context , value , child) {
          return Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Shop' ,
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold
                  ),

                ),

                Text('Pick from the selected list of premium products',
                  style: TextStyle(
                      color: palette.inversePrimary
                  ),
                ),


                Container(
                  height: 600,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: value.products.length,
                      itemBuilder: (context , index) {
                      return Container(

                        width: 250,
                        decoration: BoxDecoration(
                          color: palette.primary,
                          borderRadius: BorderRadius.circular(20)
                        ),
                        margin: EdgeInsets.all(10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20,5,20,10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  AspectRatio(
                                    aspectRatio: 1,

                                      child: Container(
                                        width: double.infinity,
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(18),
                                          child: Image.asset(value.products[index].imagePath ,
                                          fit: BoxFit.fill,
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                          color: Colors.white,
                                          borderRadius: BorderRadius.circular(18)
                                            
                                        ),
                                      ),

                                  ),
                                  SizedBox(height: 20,),
                                  Text(value.products[index].name,
                                    style: TextStyle(
                                        fontSize: 30,
                                        fontWeight: FontWeight.bold
                                    ),
                                  ),
                                  Text(value.products[index].description ,
                                  style: TextStyle(
                                    color: palette.inversePrimary,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 20,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('${value.products[index].price}'),

                                CartButton(value: value,
                                    onTap: (){
                                      value.addToCart(value.products[index]);
                                    },
                                    icon: Icon(Icons.add),
                                    index: index)


                              ],
                            )
                          ],
                        ),
                      );
                      }
                  ),
                )



              ],
            ),
          );
        }
      ),
    );
  }
}
