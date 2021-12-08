import 'package:fetch_web/fetch.controller.dart';
import 'package:fetch_web/main.dart';
import 'package:fetch_web/post.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatefulWidget {
  MyAppView({Key? key}) : super(key: key);

  @override
  _MyAppViewState createState() => _MyAppViewState();
}

class _MyAppViewState extends State<MyAppView> {
  late Future<Post> post;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    post = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder<Post>(
        future: post,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Text(snapshot.data!.title!.toString());
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }

          // Por defecto, muestra un loading spinner
          return CircularProgressIndicator();
        },
      ),
    );
  }
}
