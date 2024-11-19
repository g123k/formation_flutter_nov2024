// Event
import 'package:flutter_application_1/model/product.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class ProductEvent {}

class ProductLoadEvent extends ProductEvent {
  final String barcode;

  ProductLoadEvent(this.barcode);
}

// BLoC
class ProductBloc extends Bloc<ProductEvent, ProductState> {
  // Etat initial
  ProductBloc() : super(ProductStateLoading()) {
    on<ProductLoadEvent>(_loadProduct);
  }

  Future<void> _loadProduct(
    ProductEvent event,
    Emitter<ProductState> emit,
  ) async {
    emit(ProductStateLoading());

    await Future.delayed(Duration(seconds: 2));
    try {
      // TODO Faire une requête réseau
      Product product = generateProduct();
      emit(ProductStateSuccess(product));
    } catch (e) {
      emit(ProductStateError(e));
    }
  }
}

// State
sealed class ProductState {}

class ProductStateLoading extends ProductState {}

class ProductStateSuccess extends ProductState {
  final Product product;

  ProductStateSuccess(this.product);
}

class ProductStateError extends ProductState {
  final dynamic exception;

  ProductStateError(this.exception);
}
