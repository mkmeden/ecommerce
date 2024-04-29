import 'package:ecommerce/components/myButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Landing extends StatelessWidget {
  const Landing({super.key});

  @override
  Widget build(BuildContext context) {

    final palette =Theme.of(context).colorScheme;

    return SafeArea(
      child: Scaffold(
      
        backgroundColor: palette.background,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.shopping_cart,
                color: palette.inversePrimary,
                size: 90,
              ),
              SizedBox(height: 20.h,),
      
              Text('MINIMAL SHOP',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40
              ),
              ) ,
              SizedBox(height: 10.h,),
      
              Text('Continue to shopping',
              style: TextStyle(
                color: palette.inversePrimary
              ),),
      
              SizedBox(height: 20.h,),
              MyButton(onTap: (){
                Navigator.pushNamed(context, '/shopping');
              })
      
            ],
          ),
        ),
      ),
    );
  }
}
