import 'package:flutter/material.dart';
import 'package:my_first_app/pages/IPage.dart';

const idMap = {
  "0": "album-0",
  "1": "album-1",
  "2": "album-2"
};

class AlbumPage extends StatefulWidget with IPage {
  String id;
  AlbumPage({Key key, String appBatTitle, this.id}) {
    this.appBarTitle = appBatTitle;
  }
  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage>  {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.appBarTitle)
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Text(widget.id, style: TextStyle(color: Colors.black45, fontSize: 16),),
            SizedBox(height: 20,),
            RaisedButton(
              onPressed: () {
                setState(() => widget.appBarTitle = "HK加油💪");
              }, 
              child: Text("转换名字"),)
          ]
        )
      )
    );
  }
}

