import 'package:flutter/cupertino.dart';
import 'package:flutter_application_1/model/product.dart';

class ProductLoader extends ChangeNotifier {
  Product? product;

  Future<void> getProduct() async {
    await Future.delayed(Duration(seconds: 2));
    product = generateProduct();
    notifyListeners();
  }
}
