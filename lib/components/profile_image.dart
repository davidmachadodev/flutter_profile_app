import 'package:flutter/material.dart';
import '../pages/edit_page.dart';
import '../models/section_type.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
              builder: (BuildContext context) =>
              const EditPage(type: SectionType.image)
          )
        );
      },
      child: Stack(
        children: [
          Container(
              width: 130,
              height: 130,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 4,
                      color: Theme.of(context).primaryColor
                  ),
                  shape: BoxShape.circle,
                  image: const DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("https://www.lego.com/cdn/cs/set/assets/blt167d8e20620e4817/DC_-_Character_-_Details_-_Sidekick-Standard_-_Batman.jpg?fit=crop&format=jpg&quality=80&width=800&height=426&dpr=1")
                  )
              )
          ),
          Positioned(
              height: 40,
              width: 40,
              top: 0,
              right: 0,
              child: Container(
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white
                  ),
                  child: Icon(Icons.edit, color: Theme.of(context).primaryColor)
              )
          )
        ],
      ),
    );
  }
}