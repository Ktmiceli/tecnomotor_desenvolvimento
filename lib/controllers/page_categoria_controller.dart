import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:tecnomotor_rasther/controllers/class_montadoras.dart';

class CategoriaController extends GetxController{

  conInternet() async {
    if(await DataConnectionChecker().hasConnection){
      return true;
    }else return false;
  }

  downloadCategoryList(cat) async {

    if(await conInternet()){

      String urlFull = 'http://barcodecode.digital/api/tecnomotor_teste/' +
    'mont_per_cat/' + cat;

      http.Response responseList;
      responseList = await http.get(urlFull);

    }else{
      Get.snackbar(
          "Sem internet!",
          'Por favor, check sua conexão!');
    }

  }



}