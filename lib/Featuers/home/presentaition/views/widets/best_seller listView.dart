import 'package:bookly_app/Featuers/home/presentaition/views/widets/best_seller_item.dart';
import 'package:flutter/material.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        padding: EdgeInsets.zero,
        itemCount: 6,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: BestSellerItem(),
          );
        },
      ),
    );
  }
}
