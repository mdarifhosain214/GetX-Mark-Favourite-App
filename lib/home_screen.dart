import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controller.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Controller controller=Get.put(Controller());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourite  icon App'),
      ),
      body: ListView.builder(
        itemCount:controller.fruits.length,
          itemBuilder: (context,index){
        return Card(
          color: Colors.white,
          margin: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
          child:ListTile(
            onTap: (){
              if(controller.listFruits.contains(controller.fruits[index].toString())){
                controller.removeList(controller.fruits[index].toString());

              }
             else{
                controller.addList(controller.fruits[index].toString());
                setState(() {

                });
              }
            },
          title: Text(controller.fruits[index]),
            trailing:  Icon(Icons.favorite,color:controller.listFruits.contains(controller.fruits[index])?Colors.red: Colors.white,),
        ),);
      }),
    );
  }
}
