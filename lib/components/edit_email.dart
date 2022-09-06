import 'package:flutter/material.dart';
import '../pages/profile_page.dart';
import '../models/profile.dart';

class EditEmail extends StatefulWidget {
  const EditEmail({super.key});

  @override
  State<EditEmail> createState() => _EditEmailState();
}

class _EditEmailState extends State<EditEmail> {
  TextEditingController textController = TextEditingController(text: Profile.email);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        TextFormField(
          controller: textController,
          keyboardType: TextInputType.emailAddress,
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: "Your email address"
          ),
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
    Profile.email = textController.text;
  }
}