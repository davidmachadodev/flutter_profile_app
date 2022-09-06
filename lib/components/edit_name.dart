import 'package:flutter/material.dart';
import '../models/profile.dart';
import '../pages/profile_page.dart';

class EditName extends StatefulWidget {
  const EditName({super.key});

  @override
  State<EditName> createState() => _EditNameState();
}

class _EditNameState extends State<EditName> {
  TextEditingController textControllerFirst = TextEditingController(text: Profile.firstName);
  TextEditingController textControllerLast = TextEditingController(text: Profile.lastName);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          children: [
            Expanded(
              child: TextFormField(
                controller: textControllerFirst,
                keyboardType: TextInputType.text,
                decoration: const InputDecoration(
                    border: InputBorder.none,
                    labelText: "First Name"
                ),
              )
            ),
            Expanded(
                child: TextFormField(
                  controller: textControllerLast,
                  keyboardType: TextInputType.text,
                  decoration: const InputDecoration(
                      border: InputBorder.none,
                      labelText: "Last Name"
                  ),
                )
            )
          ],
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
    Profile.firstName = textControllerFirst.text;
    Profile.lastName = textControllerLast.text;
  }
}