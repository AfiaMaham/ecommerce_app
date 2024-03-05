import 'package:ecommerce_app/controller/model_class.dart';
import 'package:ecommerce_app/helpers/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class AppController extends GetxController {
  String companyName="";
  int price = 0;
  RxInt number=0.obs;
  RxList<int> numberList = <int>[].obs;
  RxBool isChecked = false.obs;
  RxList<bool> isCheckList = <bool>[].obs;
  List<Shoe> selected = [];
RxBool change = false.obs;
Color black = AppColor.lightBlack;
  Color blue = Colors.blueAccent;
  void changeColor(){
    if(change.value){
      black = blue;
    }
    else{
      black=black;
    }
  }
  void writeData() {
    String name = companyName;
    int dollar = price;
    var shoes = Shoe(name: name, dollar: dollar);
    var map = shoes.toMap();
    var oldData = readData();
    isCheckList.value.add(isChecked.value);
    numberList.value.add(number.value);
    oldData.add(map);
    GetStorage().write('key', oldData);
  }
   // void removeIndex(List shoes){
   //   for(int i =0;i<=isCheckList.length;i++){
   //     if(isCheckList[i]==true){
   //      GetStorage().remove(shoes[i]);
   //     }
   //   }
   // }
  List readData() {
    var data = GetStorage().read('key') ?? [] as List<Map<String,dynamic>>;
    if (data.length > isCheckList.length) {
      isCheckList.addAll(List.generate(data.length - isCheckList.length, (_) => false));
    }
    if (data.length > numberList.length) {
      numberList.addAll(List.generate(data.length - numberList.length, (_) => 0));
    }
    return data ?? [];
  }
  List toObject(List data){
    return data.map((e) => Shoe.fromMap(e)).toList();
  }

  void selectedProducts(Shoe shoe){
    if(selected.contains(shoe)){
      selected.remove(shoe);
    }else{
      selected.add(shoe);
    }
    update();
  }
}
