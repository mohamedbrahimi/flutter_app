import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment.center,
          color: Colors.cyan,
          child: Scaffold(
            appBar: AppBar(
              title: Text("List view "),
            ),
            body: getListView()
          )
      ),
    );
  }

  Widget getListView(){

    var listView = ListView(
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.access_alarm),
          title: Text("landscap"),
          subtitle: Text("See all items !!"),
          trailing: Icon(Icons.list),
          onTap: () => debugPrint("landscap tapped "),
        ),
        ListTile(
          leading: Icon(Icons.pages),
          title: Text("pages !!"),
        ),
        ListTile(
          leading: Icon(Icons.phone),
          title: Text("phone categories"),
        ),
      ],
    );

    return listView;
  }
}