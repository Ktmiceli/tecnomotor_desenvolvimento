import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:http/http.dart' as http;
import 'package:tecnomotor_rasther/controllers/class_montadoras.dart';

class CategoriaController extends GetxController{

  List CategoryList = [];

  bool DownloadStatus = false;

  conInternet() async {
    if(await DataConnectionChecker().hasConnection){
      return true;
    }else return false;
  }

  downloadCategoryList(cat) async {

    DownloadStatus = false;
    update();

    if(await conInternet()){

      String urlFull = 'http://barcodecode.digital/api/tecnomotor_teste/' +
    'mont_per_cat/' + cat;

      http.Response responseList;
      try {
        responseList = await http.get(urlFull);
        List<Montadoras> listaResposta = json.decode(responseList.body);
        if(listaResposta.length > 0){
          CategoryList = listaResposta;
          DownloadStatus = true;

          update();
        }else{ //listaResposta.length == 0
          DownloadStatus = false;
          update();
        }
      }catch(e){
        DownloadStatus = false;
        update();
      }

    }else{ //sem internet
      Get.snackbar(
          "Sem internet!",
          'Por favor, check sua conexão!');
      DownloadStatus = false;
      update();
    }

  }


}