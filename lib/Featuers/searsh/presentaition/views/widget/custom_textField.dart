import 'package:flutter/material.dart';

class CustomSearshTextField extends StatelessWidget {
  const CustomSearshTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        suffixIcon: Opacity(
          opacity: .8,
          child: IconButton(
              // iconSize: 15,
              onPressed: () {},
              icon: Image.asset(
                'assets/images/ic search.png',
                height: 25,
              )),
        ),
        hintText: 'Searsh',
        enabledBorder: buildOutLineInbutBorder(),
        focusedBorder: buildOutLineInbutBorder(),
      ),
    );
  }

  OutlineInputBorder buildOutLineInbutBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide(color: Colors.white));
  }
}
