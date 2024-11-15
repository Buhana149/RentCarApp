import 'package:bloc/bloc.dart';
import 'package:car_rental_app/domain/usecases/get_cars.dart';
import 'package:car_rental_app/presentation/bloc/car_event.dart';
import 'package:car_rental_app/presentation/bloc/car_state.dart';

class CarBloc extends Bloc<CarEvent, CarState> {
  final GetCars getCars;

  CarBloc({required this.getCars}) : super(CarLoading()) {
    on<LoadCars>(
      (event, emit) async {
        emit(CarLoading());
        try {
          final cars = await getCars.call();
          emit(CarsLoaded(cars));
        } catch (e) {
          emit(CarsError(e.toString()));
        }
      },
    );
  }
}