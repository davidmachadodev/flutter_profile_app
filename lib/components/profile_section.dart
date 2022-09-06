import 'package:flutter/material.dart';
import '../models/section_type.dart';
import '../pages/edit_page.dart';

class ProfileSection extends StatelessWidget {
  const ProfileSection({
    required this.type,
    required this.value,
    super.key
  });

  final SectionType type;
  final String value;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
            MaterialPageRoute(
                builder: (BuildContext context) => EditPage(type: type)
            )
        );
      },
      child: Stack(
        children: [
          TextFormField(
            decoration: InputDecoration(
                labelText: getLabel(type)
            ),
            initialValue: value,
            enabled: false,
          ),
          const Positioned.fill(
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                  )
              )
          )
        ],
      )
    );
  }

  String getLabel(SectionType type) {
    switch(type) {
      case SectionType.name: {
        return "Name";
      }
      case SectionType.phone: {
        return "Phone";
      }
      case SectionType.email: {
        return "Email";
      }
      case SectionType.about: {
        return "Tell Us About Yourself";
      }
    }
    return "";
  }
}