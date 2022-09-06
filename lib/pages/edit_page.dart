import 'package:flutter/material.dart';
import 'package:flutter_profile_app/components/edit_about.dart';
import 'package:flutter_profile_app/components/edit_email.dart';
import 'package:flutter_profile_app/components/edit_image.dart';
import 'package:flutter_profile_app/components/edit_name.dart';
import 'package:flutter_profile_app/components/edit_phone.dart';
import '../models/section_type.dart';
import '../components/edit_page_header.dart';

class EditPage extends StatelessWidget {
  const EditPage({
    required this.type,
    super.key
  });

  final SectionType type;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          )
        )
      ),
      body: Container(
        padding: const EdgeInsets.only(left: 16, top: 25, right: 16),
        child: ListView(
          children: [
            EditPageHeader(type: type),
            getEditSection(type)
          ],
        )
      ),
    );
  }

  Widget getEditSection(SectionType type) {
    switch(type) {
      case SectionType.image: {
        return const EditImage();
      }
      case SectionType.name: {
        return const EditName();
      }
      case SectionType.phone: {
        return const EditPhone();
      }
      case SectionType.email: {
        return const EditEmail();
      }
      case SectionType.about: {
        return const EditAbout();
      }
    }
  }
}