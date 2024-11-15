import 'package:car_rental_app/components/car_details_map.dart';
import 'package:car_rental_app/components/car_details_page_tile.dart';
import 'package:car_rental_app/components/car_details_profile_container.dart';
import 'package:car_rental_app/data/data_models/car.dart';
import 'package:car_rental_app/presentation/widgets/car_card.dart';
import 'package:flutter/material.dart';

class CarDetailsPage extends StatefulWidget {
  final Car car;
  const CarDetailsPage({super.key, required this.car});

  @override
  State<CarDetailsPage> createState() => _CarDetailsPageState();
}

class _CarDetailsPageState extends State<CarDetailsPage>
    with SingleTickerProviderStateMixin {
  AnimationController? _controller;
  Animation<double>? _animation;

  @override
  void initState() {
    _controller = AnimationController(
      duration: const Duration(seconds: 3),
      vsync: this,
    );
    _animation = Tween<double>(begin: 1.0, end: 1.5).animate(_controller!)
      ..addListener(
        () {
          setState(() {});
        },
      );
    _controller!.forward();
    super.initState();
  }

  @override
  void dispose() {
    _controller!.forward();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.info_outline),
            SizedBox(width: 5),
            Text('Information'),
          ],
        ),
      ),
      body: Column(
        children: [
          CarCard(
              car: Car(
            model: widget.car.model,
            distance: widget.car.distance,
            fuelCapacity: widget.car.fuelCapacity,
            pricePerHour: widget.car.pricePerHour,
          )),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                CarDetailsProfileContainer(),
                SizedBox(width: 20),
                CarDetailsMap(
                  car: widget.car,
                  scale: _animation!.value,
                ),
              ],
            ),
          ),
          CarDetailsPageTile(car: widget.car),
        ],
      ),
    );
  }
}
