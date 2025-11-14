part of 'cubit_cart_cubit.dart';

@immutable
sealed class CartState {}

class StateCartInitial extends CartState {}

class StateCartdata extends CartState {
  final List<ProductModel> products;
  final double price;
  StateCartdata({required this.products, required this.price});
}
