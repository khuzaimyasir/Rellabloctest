import 'package:bloc/bloc.dart';
import 'package:online_shop_app/cubitz/app_cubit_states.dart';
import 'package:online_shop_app/features/data/repositories/food_repository.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits({required this.data}) : super(InitialState()) {
    emit(WelcomeState());
  }
  final FoodRepository data;
  late final places;
  // variable to change n initalaize
  void getFoods() async {
    try {
      emit(LoadingState());
      places = await data.getFoods();
 emit(LoadedState(places));
    } catch (e) {

    }
  }
}
