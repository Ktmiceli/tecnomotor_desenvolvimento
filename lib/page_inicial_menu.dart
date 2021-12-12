import "package:flutter/material.dart";
import 'package:tecnomotor_rasther/controllers/page_categoria_controller.dart';
import 'package:get/get.dart';
import 'package:tecnomotor_rasther/page_categoria.dart';

class PageInicialMenu extends StatefulWidget {
  PageInicialMenu(){
    Get.put(CategoriaController());
  }

  @override
  _PageInicialMenuState createState() => _PageInicialMenuState();
}

class _PageInicialMenuState extends State<PageInicialMenu> {

  bool CircularBtn1 = false;
  bool CircularBtn2 = false;
  bool CircularBtn3 = false;
  bool CircularBtn4 = false;


  CircProgess(){
    return CircularProgressIndicator(
      color: Colors.red,
      backgroundColor: Colors.black,
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_,displayFull){
          return Container(
            width: displayFull.maxWidth,
            child: GetBuilder(
              builder: (context) {
                return GetBuilder<CategoriaController>(
                  builder: (controller) {
                    return Column(
                      children: [
                        SizedBox(height: 10,),
                        Text('SELEÇÃO DE CATEGORIA',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () async{
                                setState(() {
                                  CircularBtn1 = true;
                                });
                                await controller.downloadCategoryList('MOTOS');
                                if(controller.DownloadStatus){
                                  List PageArguments = [{
                                    'category': 'MOTOS',
                                    'listMontadoras':controller.CategoryList
                                  }];
                                  Get.to(PageCategoria(), arguments: PageArguments);
                                }else{
                                  setState(() {
                                    CircularBtn1 = false;
                                  });
                                }
                              },
                              child: Container(
                                height: displayFull.maxHeight *.35,
                                width: displayFull.maxWidth *.4,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage('assets/icons/motos.jpg'),
                                    fit: BoxFit.cover
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(30.0)
                                  )
                                ),
                                child: CircularBtn1? CircProgess() : null,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async{
                                setState(() {
                                  CircularBtn2 = true;
                                });
                                await controller.downloadCategoryList('LEVES');
                                if(controller.DownloadStatus){
                                  List PageArguments = [{
                                    'category': 'LEVES',
                                    'listMontadoras':controller.CategoryList
                                  }];
                                  Get.to(PageCategoria(), arguments: PageArguments);
                                }else{
                                  setState(() {
                                    CircularBtn2 = false;
                                  });
                                }
                              },
                              child: Container(
                                height: displayFull.maxHeight *.35,
                                width: displayFull.maxWidth *.4,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icons/carros.JPG'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0)
                                    )
                                ),
                                child: CircularBtn2? CircProgess() : null,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            GestureDetector(
                              onTap: () async{
                                setState(() {
                                  CircularBtn3 = true;
                                });
                                await controller.downloadCategoryList('PESADOS');
                                if(controller.DownloadStatus){
                                  List PageArguments = [{
                                    'category': 'PESADOS',
                                    'listMontadoras':controller.CategoryList
                                  }];
                                  Get.to(PageCategoria(), arguments: PageArguments);
                                }else{
                                  setState(() {
                                    CircularBtn3 = false;
                                  });
                                }
                              },
                              child: Container(
                                height: displayFull.maxHeight *.35,
                                width: displayFull.maxWidth *.4,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icons/caminhoes.jpg'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0)
                                    )
                                ),
                                child: CircularBtn3? CircProgess() : null,
                              ),
                            ),
                            GestureDetector(
                              onTap: () async{
                                setState(() {
                                  CircularBtn4 = true;
                                });
                                await controller.downloadCategoryList('AGRICOLAS');
                                if(controller.DownloadStatus){
                                  List PageArguments = [{
                                    'category': 'AGRICOLAS',
                                    'listMontadoras':controller.CategoryList
                                  }];
                                  Get.to(PageCategoria(), arguments: PageArguments);
                                }else{
                                  setState(() {
                                    CircularBtn4 = false;
                                  });
                                }
                              },
                              child: Container(
                                height: displayFull.maxHeight *.35,
                                width: displayFull.maxWidth *.4,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage('assets/icons/agricolas.jpg'),
                                        fit: BoxFit.cover
                                    ),
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(30.0)
                                    )
                                ),
                                child: CircularBtn4? CircProgess() : null,
                              ),
                            ),
                          ],
                        ),
                      ],
                    );
                  }
                );
              }
            ),
          );
        }
      ),
    );
  }
}
