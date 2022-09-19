import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_app_for_provider/pages/favorites_page.dart';
import 'package:simple_app_for_provider/provider/favorite_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final words = nouns.take(50).toList();
    final provider = Provider.of<FavoriteProvider>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: words.length,
          itemBuilder: (context,index){
          final word = words[index];
        return ListTile(
          title: Text(word),
          trailing: IconButton(onPressed: (){
            provider.toggleFavorite(word);
          }, icon: provider.isExist(word) ? Icon(Icons.favorite,color: Colors.red,)
            : Icon(Icons.favorite_border)),

            );
      }),

      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){
          final route = MaterialPageRoute(builder: (context) => FavoritePage());
          Navigator.push(context, route);

        },
        label: const Text("Favoritess"),
      ),

    );
  }
}
