import 'package:flutter/material.dart';
import '../pages/profile_page.dart';
import '../models/profile.dart';

class EditAbout extends StatefulWidget {
  const EditAbout({super.key});

  @override
  State<EditAbout> createState() => _EditAboutState();
}

class _EditAboutState extends State<EditAbout> {
  TextEditingController textController = TextEditingController(text: Profile.about);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        const Text(
          "Write a little bit about yourself. Do you like chatting? Are you a smoker? Do you bring pets with you? Etc.",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey
          )
        ),
        TextFormField(
          controller: textController,
          keyboardType: TextInputType.text,
          decoration: const InputDecoration(
            border: InputBorder.none,
          ),
          minLines: 8,
          maxLines: 8
        ),
        const SizedBox(
          height: 250,
        ),
        ElevatedButton(
            onPressed: () => {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => const ProfilePage())),
              update()
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.black),
            child: const Text("Update")
        )
      ],
    );
  }

  void update() {
    Profile.about = textController.text;
  }
}