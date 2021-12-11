import "package:flutter/material.dart";

class PageInicialMenu extends StatefulWidget {
  const PageInicialMenu({Key? key}) : super(key: key);

  @override
  _PageInicialMenuState createState() => _PageInicialMenuState();
}

class _PageInicialMenuState extends State<PageInicialMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_,displayFull){
          return Container(
            width: displayFull.maxWidth,
            child: Column(
              children: [
                SizedBox(height: 10,),
                Text('SELEÇÃO DE CATEGORIA',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
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
                    ),
                    Container(
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
                    ),
                  ],
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
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
                    ),
                    Container(
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
                    ),
                  ],
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
