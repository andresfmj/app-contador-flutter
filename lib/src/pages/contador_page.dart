import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class ContadorPage extends StatefulWidget {

  @override
  createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  int _conteo = 10;

  @override
  Widget build( BuildContext context ) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de taps:', style: TextStyle(fontSize: 30),),
            Text('$_conteo', style: TextStyle(fontSize: 25))
          ],
        ),
      ),
      floatingActionButton: _crearBotones()
    );
  }

  Widget _crearBotones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0,),
        FloatingActionButton( child: Icon( Icons.exposure_zero ), onPressed: _reset, ),
        Expanded( child: SizedBox() ),
        FloatingActionButton( child: Icon( Icons.remove ), onPressed: _sustraer, ),
        SizedBox( width: 5.0,),
        FloatingActionButton( child: Icon( Icons.add ), onPressed: _agregar, ),
      ],
    );
  }

  void _agregar() => setState(() => _conteo++ );

  void _sustraer() => setState(() { 
    if (_conteo > 0) {
      _conteo--;
    }
  });

  void _reset() => setState(() => _conteo = 0 );

}