import 'package:flutter/material.dart';
import 'package:examen_1p/model/car.dart';
import 'package:examen_1p/screens/car_screen.dart';

class CarItemWidget extends StatelessWidget {
  final Car car;
  const CarItemWidget({Key? key, required this.car}): super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: const Color.fromARGB(77, 192, 192, 192),
      ),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => CarScreen(car: car))
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              car.brand + ' - ' + car.model,
              style: const TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10.0),
            Text(car.description.substring(0, 60) + '...'),
            const SizedBox(height: 10.0),
            Text('F-M: ' + car.manufacturingDate.toString().substring(0, 16))
          ],
        ),
      )      
    );
  }
}
