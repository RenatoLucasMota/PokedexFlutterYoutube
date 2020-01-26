import 'package:flutter/material.dart';
import 'package:pokedex_youtube/pages/home_page/home_page.dart';
import 'package:pokedex_youtube/stores/pokeapi_store.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
          child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pokedex - Youtube',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage(),
      ), providers: <SingleChildWidget>[
        Provider<PokeApiStore>(
          create: (_) => PokeApiStore(),
        ),
      ],
    );
  }
}

