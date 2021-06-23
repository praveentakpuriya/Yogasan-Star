import 'package:flutter/material.dart';
import 'package:yogasanastar/util/pose_data.dart';
import 'package:url_launcher/url_launcher.dart';

class PostDetail extends StatelessWidget {
  final String asana;

  const PostDetail({this.asana});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(asana),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(0.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Image.asset(
                  "assets/poses/" + asana + ".png",
                  width: 208,
                  height: 208,
                  fit: BoxFit.contain,
                ),
              ),
              Text(
                asanasInfo[asana],
                style: TextStyle(fontSize: 20.0, color: Colors.white70),
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: TextButton(
                  child: Text(
                    'Watch Video',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    minimumSize: Size.fromHeight(1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(
                      width: 1.4,
                      color: Colors.orange[700],
                    ),
                  ),
                  onPressed: _lauchURL,
                  // {
                  //   Navigator.push(
                  //       context,
                  //       MaterialPageRoute(
                  //           builder: (context) => PostDetail(asana: asana)));
                  // },
                ),
              ),
            ],
          ),
        ),
      ),

      // Avatar
    );
  }

  _lauchURL() async {
    var url = asanasUrl[asana];
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
