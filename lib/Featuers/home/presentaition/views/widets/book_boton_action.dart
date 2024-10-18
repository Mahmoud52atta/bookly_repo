import 'package:bookly_app/Featuers/home/presentaition/views/widets/boock_details_body.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/custom_boton.dart';
import 'package:flutter/material.dart';

class BooksBottonAction extends StatelessWidget {
  const BooksBottonAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          CustomBotton(
            fontSize: 18,
            backgroundColor: Colors.white,
            text: 'Free',
            textColor: Colors.black,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(18), bottomLeft: Radius.circular(18)),
          ),
          CustomBotton(
            fontSize: 16,
            backgroundColor: Color(0xffEF8262),
            text: 'Free preview',
            textColor: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(18),
                bottomRight: Radius.circular(18)),
          )
        ],
      ),
    );
  }
}
