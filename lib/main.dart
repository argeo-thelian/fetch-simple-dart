import 'dart:async';

import 'package:fetch_web/fetch.controller.dart';
import 'package:fetch_web/fetch.view.dart';
import 'package:flutter/material.dart';
import 'package:fetch_web/post.model.dart';

void main() => runApp(MyApp(/*post: fetchPost()*/));

class MyApp extends StatelessWidget {
  final Future<Post>? post;

  MyApp({Key? key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch Data Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Fetch Data Example'),
        ),
        body: MyAppView(),
      ),
    );
  }
}
