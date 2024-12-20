// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:flutter_onlineshop_app/data/models/responses/product_response_model.dart';

import '../../../../core/components/spaces.dart';
// import '../../models/product_model.dart';
import '../product_card.dart';
import '../title_content.dart';

class ProductList extends StatelessWidget {
  final String title;
  final VoidCallback onSeeAllTap;
  final List<Product> items;

  const ProductList({
    Key? key,
    required this.title,
    required this.onSeeAllTap,
    required this.items,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TitleContent(
          title: title,
          onSeeAllTap: onSeeAllTap,
        ),
        const SpaceHeight(20.0),
        GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 55.0,
          ),
          itemCount: items.length,
          itemBuilder: (context, index) => ProductCard(
            data: items[index],
          ),
        )
      ],
    );
  }
}
