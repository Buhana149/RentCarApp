import 'package:car_rental_app/data/data_models/car.dart';
import 'package:car_rental_app/data/datasources/firebase_car_data_source.dart';
import 'package:car_rental_app/domain/repository/car_repository.dart';

class CarRepositoryImpl implements CarRepository {
  final FirebaseCarDataSource dataSource;

  CarRepositoryImpl(this.dataSource);

  @override
  Future<List<Car>> fetchCars() {
    return dataSource.getCars();
  }
}
