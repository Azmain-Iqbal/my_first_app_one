import 'package:flutter/material.dart';
import 'package:my_first_app_one/model/post_model.dart';
import 'package:my_first_app_one/service/remote_services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Post>? posts;
  var isLoaded = false;

  @override
  void initState() {
    super.initState;

    getData();
  }

  getData() async {
    posts = await RemoteService().getPost();
    if (posts != null) {
      isLoaded = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
          centerTitle: true,
        ),
        body: ListView.builder(
          itemCount: posts?.length,
          itemBuilder: (context, index) {
            return Container(
              width: 100,
              height: 20,
              child: const Text('App'),
            );
          },
        ));
  }
}
