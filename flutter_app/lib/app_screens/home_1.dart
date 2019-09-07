import 'package:flutter/material.dart';

class Home1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Container(
          alignment: Alignment.center,
          padding: EdgeInsets.only(left: 35.0, top: 50),
          color: Colors.cyan,
          child: Column(
            children: <Widget>[
              Row(children: <Widget>[
                Expanded(
                  child: Text(
                    "which one!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.amber),
                  ),
                ),
                Expanded(
                  child: Text(
                    "second one!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.black26),
                  ),
                )
              ]),
              Row(children: <Widget>[
                Expanded(
                  child: Text(
                    "got it!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 35,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrange),
                  ),
                ),
                Expanded(
                  child: Text(
                    "second one!",
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                        decoration: TextDecoration.none,
                        fontSize: 25,
                        fontFamily: 'Raleway',
                        fontWeight: FontWeight.w700,
                        color: Colors.deepOrangeAccent),
                  ),
                )
              ]),
              BeautifulBeautyAssets(),
              BeautyLikeButton()
            ],
          )),
    );
  }
}

class BeautifulBeautyAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage = AssetImage('images/beautiful-beauty-face.jpg');
    Image image = Image(image: assetImage);
    return Container(
        child: image, margin: EdgeInsets.only(left: 0, top: 20, right: 20));
  }
}

class BeautyLikeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrangeAccent,
          child: Text(
            "Beauty Like",
            style: TextStyle(
                decoration: TextDecoration.none,
                fontSize: 35,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          elevation: 7,
          onPressed: ()=> likeBeauty(context)
    ));
  }

  void likeBeauty(BuildContext context){
    var alertDialog = AlertDialog(
      title: Text("Like Beautifull pic"),
      content: Text("Like this if you are love it"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alertDialog
    );
  }
}
