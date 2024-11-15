import 'package:car_rental_app/data/data_models/car.dart';

abstract class CarRepository {
  Future<List<Car>> fetchCars();
}
