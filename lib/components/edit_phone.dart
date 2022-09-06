import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../pages/profile_page.dart';

class EditPhone extends StatefulWidget {
  const EditPhone({super.key});

  @override
  State<EditPhone> createState() => _EditPhoneState();
}

class _EditPhoneState extends State<EditPhone> {
  TextEditingController textController = TextEditingController(text: Profile.phone);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        TextFormField(
          controller: textController,
          keyboardType: TextInputType.phone,
          decoration: const InputDecoration(
            border: InputBorder.none,
            labelText: "Your phone number"
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
    Profile.phone = textController.text;
  }
}