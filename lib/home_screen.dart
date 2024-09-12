import 'package:flutter/material.dart';
import 'package:staggered_grid_view_plugin/masonry_grid.dart';

import 'staggered_grid.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Staggered Grid View',style: TextStyle(color: Colors.white),),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent)
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>MasonryGrid()));
              },
              child: Text('Massonry Grid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18,letterSpacing: 2),),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              style: ButtonStyle(
                  shape: WidgetStatePropertyAll(RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
                  backgroundColor: WidgetStatePropertyAll(Colors.redAccent)
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>StageredGrid()));
              },
              child: Text('Staggered Grid',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 18,letterSpacing: 2),),
            ),
            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
