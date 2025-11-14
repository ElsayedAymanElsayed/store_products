import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_products/models/product_model.dart';

part 'cubit_cart_state.dart';

class CubitCart extends Cubit<CartState> {
  CubitCart() : super(StateCartInitial());

  List<ProductModel> products = [];
  double price = 0.0;

  add(ProductModel product) {
    products.add(product);
    price += product.price;
    emit(StateCartdata(products: List.from(products), price: price));
  }

  removeproducts(ProductModel product) {
    products.remove(product);
    price -= product.price;

    emit(StateCartdata(products: List.from(products), price: price));
  }
}
