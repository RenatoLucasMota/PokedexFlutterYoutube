import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:pokedex_youtube/pages/home_page/home_page.dart';
import 'package:pokedex_youtube/stores/pokeapi_store.dart';

void main() {
  GetIt getIt = GetIt.instance;
  getIt.registerSingleton<PokeApiStore>(PokeApiStore());
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pokedex - Youtube',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Google'
      ),
      home: HomePage(),
    );
  }
}
