import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:store_products/Refactor/appBar_home.dart';
import 'package:store_products/constants.dart';
import 'package:store_products/models/product_model.dart';
import 'package:store_products/services/api_services_product.dart';
import 'package:store_products/widgets/GridView_builder.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key, this.photo});
  static final String id = 'Home view';
  final XFile? photo;

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  // ignore: prefer_typing_uninitialized_variables
  var future;
  @override
  void initState() {
    super.initState();
    future = ApiServicesProduct(Dio()).getProductsdata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwiteColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: kprimryColor,
        title: CircleAvatar(
          backgroundColor: kprimryColor,
          radius: 25,
          backgroundImage: widget.photo == null
              ? AssetImage('assets/images/persons1.png')
              : FileImage(File(widget.photo!.path)),
        ),
        actions: [AppBarHome()],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 12, right: 12),
        child: FutureBuilder<List<ProductModel>>(
          future: future,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return GridviewBuilderdata(product: snapshot.data!);
            } else if (snapshot.hasError) {
              return Center(
                child: Text(
                  'oops there was an error please try later',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: kprimryColor,
                  ),
                ),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(color: kprimryColor),
              );
            }
          },
        ),
      ),
    );
  }
}
