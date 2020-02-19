// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapi_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiStore on _PokeApiStoreBase, Store {
  Computed<PokeAPI> _$pokeAPIComputed;

  @override
  PokeAPI get pokeAPI =>
      (_$pokeAPIComputed ??= Computed<PokeAPI>(() => super.pokeAPI)).value;
  Computed<Pokemon> _$pokemonAtualComputed;

  @override
  Pokemon get pokemonAtual =>
      (_$pokemonAtualComputed ??= Computed<Pokemon>(() => super.pokemonAtual))
          .value;

  final _$_pokeAPIAtom = Atom(name: '_PokeApiStoreBase._pokeAPI');

  @override
  PokeAPI get _pokeAPI {
    _$_pokeAPIAtom.context.enforceReadPolicy(_$_pokeAPIAtom);
    _$_pokeAPIAtom.reportObserved();
    return super._pokeAPI;
  }

  @override
  set _pokeAPI(PokeAPI value) {
    _$_pokeAPIAtom.context.conditionallyRunInAction(() {
      super._pokeAPI = value;
      _$_pokeAPIAtom.reportChanged();
    }, _$_pokeAPIAtom, name: '${_$_pokeAPIAtom.name}_set');
  }

  final _$_pokemonAtualAtom = Atom(name: '_PokeApiStoreBase._pokemonAtual');

  @override
  Pokemon get _pokemonAtual {
    _$_pokemonAtualAtom.context.enforceReadPolicy(_$_pokemonAtualAtom);
    _$_pokemonAtualAtom.reportObserved();
    return super._pokemonAtual;
  }

  @override
  set _pokemonAtual(Pokemon value) {
    _$_pokemonAtualAtom.context.conditionallyRunInAction(() {
      super._pokemonAtual = value;
      _$_pokemonAtualAtom.reportChanged();
    }, _$_pokemonAtualAtom, name: '${_$_pokemonAtualAtom.name}_set');
  }

  final _$corPokemonAtom = Atom(name: '_PokeApiStoreBase.corPokemon');

  @override
  dynamic get corPokemon {
    _$corPokemonAtom.context.enforceReadPolicy(_$corPokemonAtom);
    _$corPokemonAtom.reportObserved();
    return super.corPokemon;
  }

  @override
  set corPokemon(dynamic value) {
    _$corPokemonAtom.context.conditionallyRunInAction(() {
      super.corPokemon = value;
      _$corPokemonAtom.reportChanged();
    }, _$corPokemonAtom, name: '${_$corPokemonAtom.name}_set');
  }

  final _$_PokeApiStoreBaseActionController =
      ActionController(name: '_PokeApiStoreBase');

  @override
  dynamic fetchPokemonList() {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.fetchPokemonList();
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  dynamic setPokemonAtual({int index}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.setPokemonAtual(index: index);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  Widget getImage({String numero}) {
    final _$actionInfo = _$_PokeApiStoreBaseActionController.startAction();
    try {
      return super.getImage(numero: numero);
    } finally {
      _$_PokeApiStoreBaseActionController.endAction(_$actionInfo);
    }
  }
}
