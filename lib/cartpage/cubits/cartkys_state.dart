import 'package:equatable/equatable.dart';
import 'package:online_shop_app/features/data/models/food.dart';



class CartkysState extends Equatable {

  @override

  List<Object?> get props => [];

}

class CartLoadedState extends CartkysState {

  final List<Recipe> cart;

  CartLoadedState({this.cart = const []});

  @override

  List<Object?> get props => [cart];

}

class CartUpdatingState extends CartkysState {}