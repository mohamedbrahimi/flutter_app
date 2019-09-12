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
            appBar: AppBar(title: Text("Long list view")),
            body: getListView(),
            floatingActionButton: FloatingActionButton(
              onPressed: () {
                debugPrint("press floating button");
              },
              child: Icon(Icons.add),
              tooltip: 'Add One more Item',
            ),
          )),
    );
  }

  void showSnackBar(BuildContext context, String text) {
    var snackBar = SnackBar(
      content: Text("Pressed Iten $text"),
      action: SnackBarAction(
          label: "OK",
          onPressed: (){
            debugPrint("Pressen Snack Bar Action");
          }),
    );
    Scaffold.of(context).showSnackBar(snackBar);
  }

  List<String> getListElement() {
    var items = List<String>.generate(50, (counter) => "item $counter");
    return items;
  }

  Widget getListView() {
    var listItems = getListElement();
    var listView = ListView.builder(
        itemCount: listItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.list),
            title: Text(listItems[index]),
            onTap: () {
              showSnackBar(context, listItems[index]);
            },
          );
        });

    return listView;
  }
}
