import 'package:flutter/material.dart';
import 'package:input_dialog_overflow_issue/ui_util.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Overflow issue of input dialog'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    const CHANGE_NICKNAME = 'Change nickname';

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: FlatButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            UIUtil.showInputDialog(context, CHANGE_NICKNAME, 'Young Sheldon',
                'Use landscape mode to reproduce the issue :)');
          },
          child: Text(CHANGE_NICKNAME),
        ),
      ),
      resizeToAvoidBottomPadding: false,
    );
  }
}
