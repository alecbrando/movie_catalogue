import 'package:flutter/cupertino.dart';
import 'package:movie_catalogue/mainheader/search_bar.dart';

import 'profile_section.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [SearchBar(), ProfileSection()],
    );
  }
}
