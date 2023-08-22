import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_application/constants.dart';
import 'package:store_application/models/product_model.dart';

import '../widgets/details/details_body.dart';

class DetailsScreen extends StatelessWidget {
   DetailsScreen({Key? key ,required this.product}) : super(key: key);
Product product;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: detailsAppBar(context),
      body: DetailsBody(product: product,),
    );
  }

  AppBar detailsAppBar(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: kBackgroundColor,
      leading: IconButton(
        padding: const EdgeInsets.only(right: kDefaultPadding),
        icon: const Icon(
          Icons.arrow_back,
          color: kPrimaryColor,
        ),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      title: Text(
        'رجوع',
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(fontSize: 20),
      ),

    );
  }
}
