import 'package:flutter/material.dart';

class Home3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment.center,
          // margin: EdgeInsets.only(left: 35.0, top: 50),
          color: Colors.cyan,
          child: Scaffold(
            appBar: AppBar(
              title: Text("Long list view")
            ),
            body: getListView(),
          )
      ),
    );
  }

  List<String> getListElement() {
    var items = List<String>.generate(50, (counter)=> "item $counter");
    return items;
  }

  Widget getListView() {
    var listItems = getListElement();
    var listView = ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text(listItems[index]),
            onTap: () {
              debugPrint('pressed item $index');
            },
          );
        }
    );

    return listView;
  }
}