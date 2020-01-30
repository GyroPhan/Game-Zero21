import 'package:flutter/material.dart';

class Loss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: RaisedButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Text("BACK"),
      ),
    );
  }
}
