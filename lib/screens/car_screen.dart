import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:examen_1p/model/car.dart';

class CarScreen extends StatefulWidget {
  final Car car;
  const CarScreen({Key? key, required this.car}) : super(key: key);

  @override
  State<CarScreen> createState() => _CarScreenState();
}

class _CarScreenState extends State<CarScreen> {

  @override
  Widget build(BuildContext context) {    
    return Scaffold(
      appBar: AppBar( 
        title: Text(widget.car.brand + ' - ' + widget.car.model) ,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row( children: [ const Text('ID: ', style: TextStyle( fontWeight: FontWeight.bold ),), Text(widget.car.id.toString()) ] ),
            const SizedBox(height: 10.0),
            Row( children: [ const Text('Marca: ', style: TextStyle( fontWeight: FontWeight.bold ),), Text(widget.car.brand) ] ),
            const SizedBox(height: 10.0),
            Row( children: [ const Text('Modelo: ', style: TextStyle( fontWeight: FontWeight.bold ),), Text(widget.car.model) ] ),
            const SizedBox(height: 10.0),
            const Text(
              'Descripción:',
              style: TextStyle(
                fontWeight: FontWeight.bold
              ),
            ),
            const SizedBox(height: 10.0),
            Text(widget.car.description),
          ],
        ),
      ),
    );
  }
}
