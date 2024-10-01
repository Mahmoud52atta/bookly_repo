import 'package:bookly_app/Featuers/home/presentaition/views/widets/best_seller_item.dart';
import 'package:bookly_app/Featuers/home/presentaition/views/widets/featuer_boocks_item.dart';
import 'package:bookly_app/Featuers/searsh/presentaition/views/widget/custom_textField.dart';
import 'package:bookly_app/Featuers/searsh/presentaition/views/widget/searsh_result_listView.dart';
import 'package:bookly_app/core/utils/styles.dart';
import 'package:flutter/material.dart';

class SearhViewBody extends StatelessWidget {
  const SearhViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          CustomSearshTextField(),
          SizedBox(
            height: 20,
          ),
          Text(
            'Searsh Result',
            style: Styles.textStyle18,
          ),
          SizedBox(
            height: 10,
          ),
          SearshResultListView(),
        ],
      ),
    );
  }
}
