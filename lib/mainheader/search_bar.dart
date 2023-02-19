import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    /// returning Flexible widget
    return const Flexible(

        /// Text input box
        child: TextField(
      decoration: InputDecoration(
        /// Search Icon
        prefixIcon: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Icon(
            Icons.search,
            color: Colors.white60,
            size: 30,
          ),
        ),

        /// Hint text in search box
        hintText: 'Search By Title, Genre and Year',
        hintStyle: TextStyle(color: Colors.white60, fontSize: 20),

        /// Remove borders
        border: InputBorder.none,
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      ),

      /// Cursor color and text style
      cursorColor: Colors.white60,
      style: TextStyle(
        color: Colors.white60,
        fontSize: 20,
      ),
      cursorHeight: 25,
    ));
  }
}
