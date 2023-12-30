import 'package:adelina_s_application1/core/app_export.dart';
import 'package:flutter/material.dart';

class SavedRecipesScreen extends StatelessWidget {
  const SavedRecipesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: SizeUtils.height,
          width: double.maxFinite,
        ),
      ),
    );
  }
}
