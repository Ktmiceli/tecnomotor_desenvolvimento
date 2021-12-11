import 'package:flutter/material.dart';
import 'package:tecnomotor_rasther/page_inicial_menu.dart';

class PageInicial extends StatefulWidget {
  const PageInicial({Key? key}) : super(key: key);

  @override
  _PageInicialState createState() => _PageInicialState();
}

class _PageInicialState extends State<PageInicial> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/tecnomotorlogo.png',
        width: MediaQuery.of(context).size.width,),
        backgroundColor: Colors.black26
      ),
      body: PageInicialMenu(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        backgroundColor: Colors.red,
        items: const<BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicial'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.search),
              label: 'Seleção'
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'Sobre'
          ),
        ],
        selectedItemColor: Colors.black,
      ),
    );
  }
}
