import 'package:flutter/material.dart';
import 'package:movie_catalogue/subheader/sort_control.dart';
import 'package:movie_catalogue/subheader/view_controls.dart';

class SubHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
        children: const [
          SortControl(),
          ViewControls()
        ]
    );
  }
}