import 'package:flutter/material.dart';
import '../models/section_type.dart';

class EditPageHeader extends StatelessWidget {
  const EditPageHeader({
    required this.type,
    super.key
  });

  final SectionType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10),
      child: Text(
        getText(type),
        style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500
        ),
      )
    );
  }

  String getText(SectionType type) {
    switch(type){
      case SectionType.image: {
        return "Upload a photo of yourself:";
      }
      case SectionType.name: {
        return "What's your name?";
      }
      case SectionType.phone: {
        return "What's your phone number?";
      }
      case SectionType.email: {
        return "What's your email?";
      }
      case SectionType.about: {
        return "What type of passenger are you?";
      }
    }
  }
}