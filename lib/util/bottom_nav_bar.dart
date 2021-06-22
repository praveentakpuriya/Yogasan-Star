import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  final String email;
  final String uid;
  final String displayName;
  final String photoUrl;
  final List<CameraDescription> cameras;
  final currentIndex;

  const BottomNavBar({
    this.email,
    this.uid,
    this.displayName,
    this.photoUrl,
    this.cameras,
    this.currentIndex,
  });
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: currentIndex,
      backgroundColor: Colors.black87,
      selectedItemColor: Colors.orange[700],
      unselectedItemColor: Colors.white.withOpacity(.60),
      selectedFontSize: 12,
      unselectedFontSize: 10,
      onTap: (value) {},
      items: [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Blog',
          icon: Icon(Icons.format_align_center_rounded),
        ),
        BottomNavigationBarItem(
          label: 'Store',
          icon: Icon(Icons.store_mall_directory_outlined),
        ),
        BottomNavigationBarItem(
          label: 'User',
          icon: Icon(Icons.person),
        ),
      ],
    );
  }
}
