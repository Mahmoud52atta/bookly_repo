import 'package:bookly_app/Featuers/searsh/presentaition/views/widget/searsh_view_body.dart';
import 'package:flutter/material.dart';

class SearshView extends StatelessWidget {
  const SearshView({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverFillRemaining(
          child: Scaffold(
            body: SafeArea(child: SearhViewBody()),
          ),
        )
      ],
    );
  }
}
