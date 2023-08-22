import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:store_application/constants.dart';
import 'package:store_application/models/product_model.dart';
import 'package:store_application/widgets/home/product_card.dart';

import '../../screens/details_screens.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: [
          const SizedBox(
            height: kDefaultPadding / 2,
          ),
          Expanded(
              child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 70),
                decoration: const BoxDecoration(
                    color: kBackgroundColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
              ),
              ListView.builder(
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return ProductCard(
                    ItemIndex: index,
                    product: products[index],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => DetailsScreen(
                                    product: products[index],
                                  )));
                    },
                  );
                },
              )
            ],
          ))
        ],
      ),
    );
  }
}
