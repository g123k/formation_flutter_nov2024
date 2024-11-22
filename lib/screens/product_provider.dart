import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/product.dart';

class ProductLoader extends ValueNotifier<Product?> {
  // Etat initial
  ProductLoader() : super(null);

  Future<void> getProduct() async {
    await Future.delayed(Duration(seconds: 2));
    value = generateProduct();
  }

  Product? get product => value;
}

class ProductLoader2 extends ChangeNotifier {
  Product? product;

  Future<void> getProduct() async {
    await Future.delayed(Duration(seconds: 2));
    product = generateProduct();
    notifyListeners();
  }
}
