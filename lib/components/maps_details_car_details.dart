import 'package:car_rental_app/constants/number_sizes.dart';
import 'package:car_rental_app/data/data_models/car.dart';
import 'package:flutter/material.dart';

class MapsDetailsCarDetails extends StatefulWidget {
  final Car car;
  const MapsDetailsCarDetails({super.key, required this.car});

  @override
  State<MapsDetailsCarDetails> createState() => _MapsDetailsCarDetailsState();
}

class _MapsDetailsCarDetailsState extends State<MapsDetailsCarDetails> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.directions_car,
          color: Colors.white,
          size: smallForth,
        ),
        SizedBox(width: xSmallSecond),
        Text(
          '>${widget.car.distance} km',
          style: TextStyle(
            color: Colors.white,
            fontSize: smallThird,
          ),
        ),
        SizedBox(width: small),
        Icon(
          Icons.battery_full,
          color: Colors.white,
          size: smallThird,
        ),
        SizedBox(
          width: xSmallSecond,
        ),
        Text(
          widget.car.fuelCapacity.toString(),
          style: TextStyle(
            color: Colors.white,
            fontSize: smallThird,
          ),
        ),
      ],
    );
  }
}
