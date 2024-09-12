import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_plugin/state_controller.dart';
import 'full_screen_image.dart';
import 'image_builder.dart';
import 'images.dart';

class MasonryGrid extends StatelessWidget {
  MasonryGrid({super.key});

  final _stateController= Get.put(StateController());


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: const Text('Masonry Grid View',style: TextStyle(color: Colors.white),),
        actions: [
          PopupMenuButton(
            tooltip: 'More',
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12)),
            position: PopupMenuPosition.under,
            color: Colors.white,
            icon: Icon(
              Icons.more_vert_rounded,
              color: Colors.white,
            ),
            itemBuilder: (context) => [
              PopupMenuItem(
                value: 1,
                // onTap: (){
                //   _taskController.getTasks();
                // },
                child: Obx(() {
                  return Text(
                    'Cross Axis 1',
                    style: TextStyle(
                      color: _stateController.selectedValue.value == 1
                          ? Colors.redAccent
                          : Colors.black,
                    ),
                  );
                }),
              ),
              PopupMenuItem(
                value: 2,
                // onTap: (){
                //   _taskController.getTasks();
                // },
                child: Obx(() {
                  return Text(
                    'Cross Axis 2',
                    style: TextStyle(
                      color: _stateController.selectedValue.value == 2
                          ? Colors.redAccent
                          : Colors.black,
                    ),
                  );
                }),
              ),
              PopupMenuItem(
                value: 3,
                // onTap: (){
                //   _taskController.getTasks();
                // },
                child: Obx(() {
                  return Text(
                    'Cross Axis 3',
                    style: TextStyle(
                      color: _stateController.selectedValue.value == 3
                          ? Colors.redAccent
                          : Colors.black,
                    ),
                  );
                }),
              ),
              PopupMenuItem(
                value: 4,
                // onTap: (){
                //   _taskController.getTasks();
                // },
                child: Obx(() {
                  return Text(
                    'Cross Axis 4',
                    style: TextStyle(
                      color: _stateController.selectedValue.value == 4
                          ? Colors.redAccent
                          : Colors.black,
                    ),
                  );
                }),
              ),
            ],
            onSelected: (value) {
              _stateController.updateSelectedValue(value);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Obx((){
          if(_stateController.selectedValue.value==1){
            return MasonryGridView.builder(
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 1,
              ), // Adjust the number of columns
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreenImage(imageUrl: images[index])));
                    },
                    child: ImageBuilder(image: images[index],)
                );
              },
            );
          }else if(_stateController.selectedValue.value==2){
            return MasonryGridView.builder(
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2
              ), // Adjust the number of columns
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreenImage(imageUrl: images[index])));
                    },
                    child: ImageBuilder(image: images[index],)
                );
              },
            );
          }else if(_stateController.selectedValue.value==3){
            return MasonryGridView.builder(
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3
              ), // Adjust the number of columns
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreenImage(imageUrl: images[index])));
                    },
                    child: ImageBuilder(image: images[index],)
                );
              },
            );
          }else{
            return MasonryGridView.builder(
              gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4
              ), // Adjust the number of columns
              mainAxisSpacing: 4,
              crossAxisSpacing: 4,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>FullScreenImage(imageUrl: images[index])));
                    },
                    child: ImageBuilder(image: images[index],)
                );
              },
            );
          }
        }),
      ),
    );
  }
}
