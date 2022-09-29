import 'package:online_shop_app/features/data/models/food.dart';




import 'package:flutter_bloc/flutter_bloc.dart';


import '../model/cartkys_service.dart';
import 'cartkys_state.dart';


class CartkysCubit extends Cubit<CartkysState> {
   final CartkysService cartkysService;

  CartkysCubit(this.cartkysService) : super(initialState);

  static get initialState => CartLoadedState();

  // List<Recipe> items = populateItems();

  // List<Recipe> cart = [];

  addingkys(Recipe item) async {

    emit(CartUpdatingState());

    cartkysService.addkysProduct(item);

    emit(CartLoadedState(cart: cart));

  }

  removekys(Recipe item) async {

    emit(CartUpdatingState());

      cartkysService.removekysItem(item);

    emit(CartLoadedState(cart: cart));

  }

  decreasekys(Recipe item) async {

    emit(CartUpdatingState());

      cartkysService.decreasekysQuantity(item);

    emit(CartLoadedState(cart: cart));

  }
  clearProductkys(Recipe item) async {

    emit(CartUpdatingState());

      cartkysService.clearkys();

    emit(CartLoadedState(cart: cart));

  }
    List<Recipe> get cart => cartkysService.cartProducts;

  get totalAmount => cartkysService.getkysTotal();

  get subTotal => cartkysService.getkysSubTotal();

  get productQuantity => cartkysService.productkysQuantity(cart);

  get decreaseQuantity => cartkysService.decreasekysQuantity;

}