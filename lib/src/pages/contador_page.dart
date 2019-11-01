import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage>{
  
final TextStyle _sizeDefault = new TextStyle( fontSize: 25);
final TextStyle _sizeNumberDefault = new TextStyle( fontSize: 60);
int _contador = 0;

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
            Text('Numero de clicks', style: _sizeDefault),
            Text('$_contador', style: _sizeNumberDefault),
          ],
        )
        ),
      floatingActionButton: _createButtons()
    );
  }


  Widget _createButtons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
      SizedBox(width: 30.0,),
      _buttonCero(),
      Expanded(child : SizedBox()),
      _buttonMinus(),
      SizedBox(width: 5.0,),
      _buttonPlus()
    ],);
  }

  FloatingActionButton _buttonPlus(){
      return FloatingActionButton(
          child: Icon(Icons.add),        
          onPressed: _plus
        );
    }

  FloatingActionButton _buttonMinus(){
      return FloatingActionButton(
          child: Icon(Icons.remove),        
          onPressed: _minus
        );
    }

  FloatingActionButton _buttonCero(){
      return FloatingActionButton(
          child: Icon(Icons.exposure_zero),        
          onPressed: _reset
        );
    }

  void _plus(){
    setState(() {
      _contador++;
    });    
  }

  void _minus(){
    setState(() {
      _contador--;
    });    
  }

  void _reset(){
     setState(() {
      _contador = 0;
    });    
  }

}