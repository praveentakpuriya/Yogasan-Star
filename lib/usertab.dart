import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:yoga_guru/login.dart';
import 'package:yoga_guru/profile.dart';
import 'package:yoga_guru/util/user.dart';
import 'package:yoga_guru/home.dart';
import 'package:yoga_guru/store.dart';
import 'package:yoga_guru/blog.dart';

class UserTab extends StatelessWidget {
  final String email;
  final String uid;
  final String displayName;
  final String photoUrl;
  final List<CameraDescription> cameras;

  const UserTab({
    this.email,
    this.uid,
    this.displayName,
    this.photoUrl,
    this.cameras,
  });

  @override
  Widget build(BuildContext context) {
    User user = User();
    int _currentIndex = 3;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange[700],
        title: Text('Yoga-Star'),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            (user.email == null)
                ? Icons.cancel_presentation_sharp
                : Icons.verified_outlined,
            color: (user.email == null)
                ? Colors.red
                : Colors.greenAccent, // add custom icons also
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: (user.email == null)
                ? Icon(Icons.outlet_rounded)
                : Icon(Icons.person, color: Colors.greenAccent),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                (user.email == null)
                    ? MaterialPageRoute(
                        builder: (context) => Login(
                          cameras: cameras,
                        ),
                      )
                    : MaterialPageRoute(
                        builder: (context) => Profile(
                          email: user.email,
                          uid: user.uid,
                          displayName: user.displayName,
                          photoUrl: user.photoUrl,
                        ),
                      ),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.black87,
        selectedItemColor: Colors.orange[700],
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: 12,
        unselectedFontSize: 10,
        onTap: (value) {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => value == 0
                    ? Home(
                        email: email,
                        uid: uid,
                        displayName: displayName,
                        photoUrl: photoUrl,
                        cameras: cameras,
                      )
                    : value == 1
                        ? Blog(
                            email: email,
                            uid: uid,
                            displayName: displayName,
                            photoUrl: photoUrl,
                            cameras: cameras,
                          )
                        : value == 2
                            ? Store(
                                email: email,
                                uid: uid,
                                displayName: displayName,
                                photoUrl: photoUrl,
                                cameras: cameras,
                              )
                            : UserTab(
                                email: email,
                                uid: uid,
                                displayName: displayName,
                                photoUrl: photoUrl,
                                cameras: cameras,
                              )),
          );
        },
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
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(top: 10.0),
                child: Image(
                  image: AssetImage('assets/images/yoga1.png'),
                  width: 202,
                  height: 250,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
