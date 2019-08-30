import 'package:flutter/material.dart';

const idMap = {
  "0": "album-0",
  "1": "album-1",
  "2": "album-2"
};

class AlbumPage extends StatelessWidget {
  final String id;
  const AlbumPage ({
    Key key,
    @required this.id
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: (
        Text(idMap[id], style: TextStyle(color: Colors.black45, fontSize: 16),)
      ),
    );
  }
}
