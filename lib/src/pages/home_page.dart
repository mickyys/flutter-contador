import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final TextStyle sizeDefault = new TextStyle( fontSize: 25);
  final TextStyle sizeNumberDefault = new TextStyle( fontSize: 60);
  final contador = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks', style: sizeDefault),
            Text('$contador', style: sizeNumberDefault),
          ],
        )
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),        
        onPressed: () => {
          print('Holas')
        },
      ),
    );
  }
}