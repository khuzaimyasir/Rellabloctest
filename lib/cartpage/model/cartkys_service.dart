import 'package:online_shop_app/features/data/models/food.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';

class CartkysService {
  final List<Recipe> cartProducts = [];

  final deliveryFee = 10.0;

  int quantity = 1;

  productkysQuantity(cartProducts) {
    var quantity = {};
    cartProducts.forEach((product) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    });
    return quantity;
  }

  addkysProduct(Recipe product) {
    cartProducts.add(product);
  }

  removekysItem(Recipe product) {
    cartProducts.removeWhere((x) => x == product);
  }

  void clearkys() {
    cartProducts.clear();
  }

  double getkysSubTotal() {
    return cartProducts
        .map((e) => e.recipeId)
        .fold(0, (price1, price2) => price1 + price2.length);
  }

  double getkysTotal() {
    return cartProducts
        .map((e) => e.recipeId)
        .fold(deliveryFee, (price1, price2) => price1 + price2.length);
  }

  decreasekysQuantity(Recipe product) {
    cartProducts.remove(product);
  }
}
