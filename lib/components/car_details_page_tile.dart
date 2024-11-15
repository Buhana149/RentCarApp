import 'package:car_rental_app/data/data_models/car.dart';
import 'package:car_rental_app/presentation/widgets/more_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPageTile extends StatelessWidget {
  final Car car;
  const CarDetailsPageTile({super.key, required this.car});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          MoreCard(
              car: Car(
            model: '${car.model}-1',
            distance: car.distance + 100,
            fuelCapacity: car.fuelCapacity + 100,
            pricePerHour: car.pricePerHour + 100,
          )),
          SizedBox(height: 5),
          MoreCard(
              car: Car(
            model: '${car.model}-2',
            distance: car.distance + 200,
            fuelCapacity: car.fuelCapacity + 200,
            pricePerHour: car.pricePerHour + 200,
          )),
          SizedBox(height: 5),
          MoreCard(
              car: Car(
            model: '${car.model}-3',
            distance: car.distance + 300,
            fuelCapacity: car.fuelCapacity + 300,
            pricePerHour: car.pricePerHour + 300,
          )),
        ],
      ),
    );
  }
}
