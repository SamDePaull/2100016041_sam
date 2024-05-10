import 'package:flutter/material.dart';

import 'package:shrine/colors.dart';
import 'supplemental/asymmetric_view.dart';

import 'model/product.dart';
import 'model/products_repository.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Container(
          decoration: const BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: kShrineBlue,
                blurRadius: 2.0, // Spread radius
                offset: Offset(0, 5), // Shadow position
              ),
            ],
          ),
          child: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.menu,
                semanticLabel: 'menu',
                color: kShrineSurfaceWhite,
              ),
              onPressed: () {},
            ),
            title: Text(
              'SHRINE',
              style: Theme.of(context).textTheme.headline6!.copyWith(
                    color: kShrineSurfaceWhite,
                  ),
            ),
            backgroundColor: kShrineBlue,
            elevation:
                0, // Set elevation of the AppBar to 0 to remove default shadow
            actions: <Widget>[
              IconButton(
                icon: const Icon(
                  Icons.search,
                  semanticLabel: 'search',
                  color: kShrineSurfaceWhite,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(
                  Icons.tune,
                  semanticLabel: 'filter',
                  color: kShrineSurfaceWhite,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
      body: AsymmetricView(
        products: ProductsRepository.loadProducts(Category.all),
      ),
      resizeToAvoidBottomInset: false,
    );
  }
}
