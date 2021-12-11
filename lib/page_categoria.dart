import 'package:flutter/material.dart';

class PageCategoria extends StatefulWidget {
  const PageCategoria({Key? key}) : super(key: key);

  @override
  _PageCategoriaState createState() => _PageCategoriaState();
}

class _PageCategoriaState extends State<PageCategoria> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text('Titulo'),
      ),
    );
  }
}
