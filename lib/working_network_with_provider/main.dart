import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_for_provider/working_network_with_provider/pages/home_page.dart';

import 'package:simple_app_for_provider/working_network_with_provider/provider/data_provider.dart';

void main(){
  runApp(const MyAppNetworkApp());
}

class MyAppNetworkApp extends StatelessWidget {
  const MyAppNetworkApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(create: (context) => DataProvider(),
      child: const MaterialApp(
        home: HomePage(),
      ),

    );

  }
}
