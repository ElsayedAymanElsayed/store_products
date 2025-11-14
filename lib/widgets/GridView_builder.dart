import 'package:flutter/material.dart';
import 'package:store_products/models/product_model.dart';
import 'package:store_products/widgets/custom_cart.dart';

class GridviewBuilderdata extends StatelessWidget {
  const GridviewBuilderdata({super.key, required this.product});
  final List<ProductModel> product;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      clipBehavior: Clip.none,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 25,
        crossAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemCount: product.length,
      itemBuilder: (context, index) {
        return CustomCart(product: product[index]);
      },
    );
  }
}
