import 'package:equatable/equatable.dart';
import 'package:online_shop_app/features/data/models/food.dart';
import 'package:online_shop_app/features/data/repositories/food_repository.dart';

abstract class CubitStates extends Equatable {}

class InitialState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class WelcomeState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadingState extends CubitStates {
  @override
  List<Object?> get props => [];
}

class LoadedState extends CubitStates {
  LoadedState(this.places);
  final List<Recipe> places;
  @override
  List<Object?> get props => [];
}
