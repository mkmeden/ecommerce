import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    final palette =Theme.of(context).colorScheme;
    
    return Drawer(
      backgroundColor: palette.background,
      child: Padding(
        padding: const EdgeInsets.only(top: 80),
        child: Column(

          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            DrawerHeader(
              child: Icon(Icons.shopping_cart ,
              size: 80,
                color: palette.inversePrimary,

              ),


            ),

           Column(
             children: [
               ListTile(
                 leading: Icon(Icons.shopping_cart ,
                   color: palette.inversePrimary,

                 ),
                 onTap: () {
                   Navigator.pop(context);
                 },
                 title: Text('Shop' ,
                   style: TextStyle(
                       color: palette.inversePrimary,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
               ListTile(
                 leading: Icon(Icons.shopping_cart ,
                   color: palette.inversePrimary,

                 ),
                 onTap: () {
                   Navigator.pop(context);
                   Navigator.pushReplacementNamed(context, '/cart');
                 },
                 title: Text('Cart' ,
                   style: TextStyle(
                       color: palette.inversePrimary,
                       fontWeight: FontWeight.bold
                   ),
                 ),
               ),
             ],
           ),
            SizedBox(height: 200.h,),

            ListTile(
              leading: Icon(Icons.exit_to_app ,
                color: palette.inversePrimary,

              ),
              onTap: () {

                // Navigator.pushReplacement(context, 'intro_page');
                Navigator.pop(context);
                Navigator.pushReplacementNamed(context, '/intro_page');

              },
              title: Text('Exit' ,
                style: TextStyle(
                    color: palette.inversePrimary,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
