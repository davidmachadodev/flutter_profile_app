import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 20),
      child: Text(
        "Edit Profile",
        style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
            color: Theme.of(context).primaryColor
        ),
      )
    );
  }
}