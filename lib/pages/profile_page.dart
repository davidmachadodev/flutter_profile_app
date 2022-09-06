import 'package:flutter/material.dart';
import '../components/profile_image.dart';
import '../components/profile_header.dart';
import '../components/profile_section.dart';
import '../models/profile.dart';
import '../models/section_type.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            const Center(child: ProfileHeader()),
            const Center(child: ProfileImage()),
            ProfileSection(type: SectionType.name, value: "${Profile.firstName} ${Profile.lastName}"),
            ProfileSection(type: SectionType.phone, value: Profile.phone),
            ProfileSection(type: SectionType.email, value: Profile.email),
            ProfileSection(type: SectionType.about, value: Profile.about)
          ],
        ),
      ),
    );
  }
}