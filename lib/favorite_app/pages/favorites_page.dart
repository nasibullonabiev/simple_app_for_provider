import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../provider/favorite_provider.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavoriteProvider>(context);
    final words = provider.words;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Favorites"),
      ),
      body: ListView.builder(
        itemCount: words.length,
          itemBuilder: (context,index){
          final word = words[index];
          return ListTile(
            title: Text(word),
            trailing: provider.isExist(word) ? Icon(Icons.favorite,color: Colors.red,)
                : Icon(Icons.favorite_border)
          );

      }),
    );
  }
}
