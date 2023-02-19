import 'package:flutter/material.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        /// Text widget for user's name
        Text(
          "Rexford Nyarko",
          style: TextStyle(color: Colors.white, fontSize: 18),
        ),
        SizedBox(
          width: 20,
        ),

        /// Circular profile thumbnail
        CircleAvatar(
          backgroundImage: AssetImage("/img/profile.thumbnail.jpeg"),
          radius: 35,
        ),
        SizedBox(
          width: 15,
        ),

        /// setting icon
        Icon(
          Icons.settings,
          color: Colors.white,
        ),
        SizedBox(
          width: 40,
        ),
      ],
    );
  }
}
