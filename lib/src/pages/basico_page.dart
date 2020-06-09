import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
class BasicoPage extends StatelessWidget {  

  final estiloTitulo = TextStyle(
                            fontSize:20.0,
                            fontWeight:FontWeight.bold
                      );
  final estiloSubtitulo = TextStyle(
                            fontSize:17.0,
                            color: Colors.grey
                      );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[

          _crearImagen(),
          _crearTitulo(),
          _crearAcciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),

          ] 
        ),
      ) ,
    );
  }


  Widget _crearImagen(){
    return Container(
      width: double.infinity,
      child: Image(
          image:NetworkImage('https://i.pinimg.com/originals/88/63/d6/8863d6be37968226c5c0652da2e36fcd.jpg'),
          height: 200.0,
          fit: BoxFit.cover,
      ),
    ); 
  }
  Widget _crearTitulo(){
    return SafeArea(
          child: Container(
              padding: EdgeInsets.symmetric(horizontal:30.0,vertical:20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text('Naturaleza',style: estiloTitulo),
                        SizedBox(
                          height: 7.0,
                        ),
                        Text('Se encuentra quien sabe',style: estiloSubtitulo)
                      ],
                    ),
                  ),

                  Icon(Icons.star,color: Colors.red,size: 30.0,),
                  Text('41',style: TextStyle(fontSize: 20.0),)
                ],
              ),
      ),
    );
  }

  Widget _crearAcciones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _accion(Icons.call,'call'),
        _accion(Icons.near_me,'Route'),
        _accion(Icons.share,'Share')
      ],
    );
  }

  Widget _accion(IconData icon,String text){
    return Column(
          children: <Widget>[
            Icon(icon,color: Colors.blue,size:40.0),
            SizedBox(height: 5.0,),
            Text(text,style: TextStyle(fontSize:15.0,color: Colors.blue),)
          ],
    );
  }

  Widget _crearTexto(){
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal:40.0,vertical:20.0),
        child: Text(
          'lorem asdkaskdasdklnalfkas dasjf dajf askdapad akd ask daskd akld alkd alkd lad klsad kd alk akdkddlk dka dkad alkd ak kdkd',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

}