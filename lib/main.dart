
import 'package:ecommerce/Models/shop_functions.dart';
import 'package:ecommerce/Screens/cart_page.dart';
import 'package:ecommerce/Screens/landing.dart';
import 'package:ecommerce/Screens/shop_page.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/theme.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';
import 'package:ecommerce/Models/shop.dart';

void main() {

  runApp( ChangeNotifierProvider(
      create: (context) => ShopFunctions(),
      child: MyApp() ,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(1080, 2400),
      builder: (_ , child) {
        return MaterialApp(
          initialRoute: '/intro_page',
          routes: {
            '/intro_page' : (context)=> Landing(),
            '/shopping' : (context) => Shopping(),
            '/cart' : (context) => Cart(),
          },
          title: 'Flutter Demo',
          theme: lightMode,

        );
      }
    );
  }
}

