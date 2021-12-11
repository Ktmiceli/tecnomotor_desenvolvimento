import 'package:flutter/material.dart';
import 'package:tecnomotor_rasther/page_inicial.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (_,displayFull){
            return Container(
              width: displayFull.maxWidth,
              height: displayFull.maxHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/walpapper.png"),
                  fit: BoxFit.cover
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (cotext) => PageInicial()));
                    },
                    child: Container(
                      width: displayFull.maxWidth * .8,
                      height: 45,
                      color: Colors.white70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('ENTRAR',
                          style: TextStyle(fontWeight: FontWeight.w900, fontSize: 25, color: Colors.red),),
                          Icon(Icons.arrow_forward_rounded, size: 35,)
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                ],
              ),
            );
          }
      ),
    );
  }
}
