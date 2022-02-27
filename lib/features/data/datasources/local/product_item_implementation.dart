import 'package:online_shop_app/features/data/datasources/product_item_datasource.dart';
import 'package:online_shop_app/features/data/models/product_model.dart';

class ProductItemDatasourceImplementation implements IProductItemDatasource {
  @override
  Future<List<Product>> getProductItems() async {
    List<Product> products = [
      const Product(
        id: 001,
        title: 'Dessert',
        imageUrl:
            "https://wpimg.wallstcn.com/f778738c-e4f8-4870-b634-56703b4acafe.gif",
        price: 5.99,
        quantity: 1,
      ),
      const Product(
        id: 002,
        title: 'Pizza',
        imageUrl:
            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        price: 10.0,
        quantity: 1,
      ),
      const Product(
        id: 003,
        title: 'Salad',
        imageUrl:
            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        price: 13.70,
        quantity: 1,
      ),
      const Product(
        id: 004,
        title: 'Pasta',
        imageUrl:
            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        price: 20.00,
        quantity: 1,
      ),
      const Product(
        id: 005,
        title: 'Cupcake',
        imageUrl:
  'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',        price: 4.78,
        quantity: 1,
      ),
      const Product(
        id: 006,
        title: 'Donuts',
        imageUrl:
  'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',        price: 3.50,
        quantity: 1,
      ),
      const Product(
        id: 007,
        title: 'Pie',
        imageUrl:
  'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',        price: 5.99,
        quantity: 1,
      ),
      const Product(
        id: 008,
        title: 'Cake',
        imageUrl:
  'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',        price: 10.0,
        quantity: 1,
      ),
      const Product(
        id: 009,
        title: 'Choco Cake',
        imageUrl:
  'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',  
        price: 13.70,
        quantity: 1,
      ),
      const Product(
        id: 0010,
        title: 'Cupcake Fruit',
        imageUrl:
            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        price: 20.00,
        quantity: 1,
      ),
      const Product(
        id: 0011,
        title: 'Dessert Ice',
        imageUrl:
            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        price: 4.78,
        quantity: 1,
      ),
      const Product(
        id: 0012,
        title: 'Veg Salad',
        imageUrl:
            'https://images.unsplash.com/photo-1555529771-7888783a18d3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60',
        price: 3.50,
        quantity: 1,
      ),
    ];
    return products;
  }
}

