import 'package:flutter/material.dart';
import 'package:yogasanastar/pose_detail.dart';

class YogaCard extends StatelessWidget {
  final String asana;
  final Color color;

  const YogaCard({this.asana, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      padding: EdgeInsets.all(24.0),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: <BoxShadow>[
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0.0, 10.0),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(
              "assets/poses/" + asana + ".png",
              fit: BoxFit.contain,
            ),
          ),
          Text(
            asana,
            style: TextStyle(fontSize: 20),
          ),
          // IconButton(
          //   iconSize: 45,
          //   icon: Icon(Icons.info_outline, color: Colors.orangeAccent),
          //   onPressed: () {
          //     Navigator.push(
          //         context,
          //         MaterialPageRoute(
          //             builder: (context) => PostDetail(asana: asana)));
          //   },
          // ),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextButton(
              child: Text(
                'Learn',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Colors.black87,
                minimumSize: Size.fromHeight(1),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                side: BorderSide(
                  width: 1.4,
                  color: Colors.orange[700],
                ),
              ),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PostDetail(asana: asana)));
              },
            ),
          )
        ],
      ),
    );
  }
}
