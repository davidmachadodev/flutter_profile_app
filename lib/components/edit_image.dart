import 'package:flutter/material.dart';
import '../pages/profile_page.dart';

class EditImage extends StatelessWidget{
  const EditImage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
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

  }
}