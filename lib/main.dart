import 'package:flutter/material.dart';
import 'package:flutter_simple_treeview/flutter_simple_treeview.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: const Text('香り'),
          ),
          body: Center(
              child: Column(children: [
            Expanded(
                child: ListView(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                TreeView(nodes: [
                  TreeNode(
                      content: const CheckboxRow(
                        name: 'フルーティー・フローラル',
                        checked: true,
                      ),
                      children: [
                        TreeNode(
                            content: const CheckboxRow(
                          name: 'レモン',
                          checked: true,
                        )),
                        TreeNode(
                            content: const CheckboxRow(
                          name: 'ライム',
                          checked: true,
                        )),
                        TreeNode(
                            content: const CheckboxRow(
                          name: 'オレンジ',
                          checked: false,
                        )),
                      ])
                ])
              ],
            ))
          ])),
        ));
  }
}

class CheckboxRow extends StatelessWidget {
  const CheckboxRow({required this.name, required this.checked, Key? key})
      : super(key: key);

  final String name;
  final bool checked;

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black, width: 1))),
        child: Row(children: [
          SizedBox(
              width: 24,
              height: 24,
              child: Checkbox(
                  value: checked, onChanged: (isChecked) => print(isChecked))),
          Expanded(child: Text(name))
          // Text(name)
        ]));
    // child: CheckboxListTile(
    //   title: Text(name),
    //   activeColor: Colors.blue,
    //   value: checked,
    //   onChanged: (isChecked) => print(isChecked),
    //   controlAffinity: ListTileControlAffinity.leading,
    // ));
  }
}
