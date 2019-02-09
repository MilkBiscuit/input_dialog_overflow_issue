import 'package:flutter/material.dart';

class UIUtil {

  static Future<String> showInputDialog(BuildContext context, String title, [String defaultInput, String message]) {
    var textController = new TextEditingController(text: defaultInput ?? "");
    var content = Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        message != null && message != "" ? Text(message) : Container(),
        TextField(controller: textController)
      ],
    );

    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        var mediaQuery = MediaQuery.of(context);

        return AnimatedContainer(
          padding: mediaQuery.padding,
          duration: const Duration(milliseconds: 300),
          child: AlertDialog(
            title: Text(title),
            content: content,
            actions: <Widget>[
              FlatButton(
                child: Text("Cancel"),
                onPressed: () => Navigator.pop(context),
              ),
              FlatButton(
                child: Text("OK"),
                onPressed: () => Navigator.pop(context, textController.text),
              ),
            ],
          ),
        );
      },
    );
  }

}