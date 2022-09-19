import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_for_provider/pages/home_page.dart';
import 'package:simple_app_for_provider/provider/favorite_provider.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(create: (context) => FavoriteProvider(),
      child: MaterialApp(
        home: HomePage(),
      ),


    );
  }
}
