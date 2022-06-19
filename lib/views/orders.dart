import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'defaultpage.dart';

class Orderspage extends StatefulWidget {
  const Orderspage({Key? key}) : super(key: key);

  @override
  State<Orderspage> createState() => _OrderspageState();
}

class _OrderspageState extends State<Orderspage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Orders"),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.of(context).pushReplacement(
                    MaterialPageRoute(builder: (context) => DefaultPage()));
              },
              icon: Icon(Icons.arrow_back))
        ],
      ),
      body: Container(height: 500, ),
    );
  }
}
