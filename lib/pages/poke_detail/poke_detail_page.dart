import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pokedex_youtube/consts/consts_api.dart';
import 'package:pokedex_youtube/consts/consts_app.dart';
import 'package:pokedex_youtube/models/pokeapi.dart';
import 'package:pokedex_youtube/stores/pokeapi_store.dart';
import 'package:provider/provider.dart';
import 'package:sliding_sheet/sliding_sheet.dart';

class PokeDetailPage extends StatelessWidget {
  final int index;

  Color _corPokemon;

  PokeDetailPage({Key key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _pokemonStore = Provider.of<PokeApiStore>(context);
    Pokemon _pokemon = _pokemonStore.pokemonAtual;
    _corPokemon = ConstsAPI.getColorType(type: _pokemon.type[0]);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: Observer(
          builder: (BuildContext context) {
            _corPokemon = ConstsAPI.getColorType(
                  type: _pokemonStore.pokemonAtual.type[0]);
            return AppBar(
              title: Opacity(
                child: Text(
                  _pokemon.name,
                  style: TextStyle(
                      fontFamily: 'Google',
                      fontWeight: FontWeight.bold,
                      fontSize: 21),
                ),
                opacity: 0.0,
              ),
              elevation: 0,
              backgroundColor: _corPokemon,
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: <Widget>[
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                ),
              ],
            );
          },
        ),
      ),
      body: Stack(
        children: <Widget>[
          Observer(
            builder: (context) {
              _corPokemon = ConstsAPI.getColorType(
                  type: _pokemonStore.pokemonAtual.type[0]);
              return Container(color: _corPokemon);
            },
          ),
          Container(height: MediaQuery.of(context).size.height / 3),
          SlidingSheet(
            elevation: 0,
            cornerRadius: 16,
            snapSpec: const SnapSpec(
              snap: true,
              snappings: [0.7, 1.0],
              positioning: SnapPositioning.relativeToAvailableSpace,
            ),
            builder: (context, state) {
              return Container(
                height: MediaQuery.of(context).size.height,
              );
            },
          ),
          Padding(
            child: SizedBox(
                height: 150,
                child: PageView.builder(
                  onPageChanged: (index) {
                    _pokemonStore.setPokemonAtual(index: index);
                  },
                  itemCount: _pokemonStore.pokeAPI.pokemon.length,
                  itemBuilder: (BuildContext context, int count) {
                    Pokemon _pokeitem = _pokemonStore.getPokemon(index: count);
                    return CachedNetworkImage(
                      height: 60,
                      width: 60,
                      placeholder: (context, url) => new Container(
                        color: Colors.transparent,
                      ),
                      imageUrl:
                          'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/${_pokeitem.num}.png',
                    );
                  },
                )),
            padding: EdgeInsets.only(top: 50),
          )
        ],
      ),
    );
  }
}
