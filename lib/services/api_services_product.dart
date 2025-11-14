import 'package:dio/dio.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/models/product_model.dart';

class ApiServicesProduct {
  Dio dio;
  ApiServicesProduct(this.dio);

  Future<List<ProductModel>> getProductsdata() async {
    try {
      Response response = await dio.get(baseurl);

      List<dynamic> products = response.data;
      List<ProductModel> dataproduct = [];

      for (var product in products) {
        dataproduct.add(ProductModel.fromjson(product));
      }
      return dataproduct;
    } on DioException catch (e) {
      return throw Exception(e.toString());
    }
  }
}
