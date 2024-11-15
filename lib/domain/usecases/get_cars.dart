import 'package:car_rental_app/data/data_models/car.dart';
import 'package:car_rental_app/domain/repository/car_repository.dart';

class GetCars {
  final CarRepository repository;

  GetCars(this.repository);

  Future<List<Car>> call() async {
  return await repository.fetchCars();
  }
}
