import 'package:get/get.dart';
class Controller extends GetxController{
  RxList<String>fruits =[
    'Apple',
    'Banana',
    'jack-fruit',
  ].obs;
  List listFruits=[];
  addList(String value){
    listFruits.add(value);
  }
  removeList(String value){
    listFruits.remove(value);
  }
}