import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_details_body.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_details_appBar.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:flutter/material.dart';

class BoocksDetails extends StatelessWidget {
  const BoocksDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 41,
          ),
          BoockDetailsAppBar(),
          SizedBox(
            height: 36,
          ),
          BoockDetailsBody(),
        ],
      ),
    );
  }
}
