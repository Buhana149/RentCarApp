import 'package:car_rental_app/data/data_models/car.dart';
import 'package:car_rental_app/presentation/pages/maps_details_page.dart';
import 'package:flutter/material.dart';

class CarDetailsMap extends StatefulWidget {
  final Car car;
  final double scale;
  const CarDetailsMap({super.key, required this.car, required this.scale});

  @override
  State<CarDetailsMap> createState() => _CarDetailsMapState();
}

class _CarDetailsMapState extends State<CarDetailsMap> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => MapsDetailsPage(car: widget.car),
            )),
        child: Container(
          height: 170,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  spreadRadius: 5,
                )
              ]),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Transform.scale(
              scale: widget.scale,
              alignment: Alignment.center,
              child: Image.asset(
                'lib/assets/istockphoto-1287419541-612x612.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
