import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_for_provider/working_network_with_provider/provider/data_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  @override
  void initState() {
    super.initState();
    final postModel = Provider.of<DataProvider>(context,listen: false);
    postModel.getPostData();
  }
  @override
  Widget build(BuildContext context) {
    final postModel = Provider.of<DataProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Working with network using provider state management"),
      ),
      body: Container(
        padding: const EdgeInsets.all(20),
        child: postModel.isLoading ?  const Center(
          child: CircularProgressIndicator(),
        ):Center(
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          margin: const EdgeInsets.only(top: 40,bottom: 20),
          child: Text(postModel.post?.title ?? "",
            style: const TextStyle(fontSize: 18,fontWeight: FontWeight.bold),
          ),
        ),

        Container(
          margin: const EdgeInsets.only(top: 40,bottom: 20),
          child: Text(postModel.post?.body ?? "",
            style: const TextStyle(fontSize: 12),
          ),
        ),
      ],
    ),
    ))
    );
  }
}
