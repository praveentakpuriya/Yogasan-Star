import 'package:flutter/material.dart';

class Blog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(10),
      children: <Widget>[
        Card(
            child: ListTile(
                title: Text("1210"),
                subtitle: Text("john doe."),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                trailing: Icon(
                  Icons.star,
                  color: Colors.orange[700],
                ))),
        Card(
            child: ListTile(
                title: Text("1200"),
                subtitle: Text("johnny."),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                trailing: Icon(Icons.star, color: Colors.orange[700]))),
        Card(
            child: ListTile(
                title: Text("732"),
                subtitle: Text("shivi"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                trailing: Icon(Icons.star, color: Colors.orange[700]))),
        Card(
            child: ListTile(
                title: Text("701"),
                subtitle: Text("jafri"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                trailing: Icon(Icons.star))),
        Card(
            child: ListTile(
                title: Text("669"),
                subtitle: Text("tokyo"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                trailing: Icon(Icons.star))),
        Card(
            child: ListTile(
                title: Text("668"),
                subtitle: Text("Tony"),
                leading: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://images.unsplash.com/photo-1547721064-da6cfb341d50")),
                trailing: Icon(Icons.star))),
      ],
    );
  }
}
