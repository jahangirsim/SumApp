import 'package:flutter/material.dart';

InputDecoration appInputStyle(String label) {
  return InputDecoration(
    contentPadding: EdgeInsets.fromLTRB(20, 5, 20, 5),
    filled: true,
    fillColor: Colors.black12,
    labelText: label,

  );
}

TextStyle headTextStyle() {
  return TextStyle(
    fontSize: 35,
    color: Colors.grey,
  );
}



ButtonStyle appButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(20),
      backgroundColor: Colors.green,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(6))));
}
