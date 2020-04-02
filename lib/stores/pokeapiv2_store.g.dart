// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokeapiv2_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$PokeApiV2Store on _PokeApiV2StoreBase, Store {
  final _$specieAtom = Atom(name: '_PokeApiV2StoreBase.specie');

  @override
  Specie get specie {
    _$specieAtom.context.enforceReadPolicy(_$specieAtom);
    _$specieAtom.reportObserved();
    return super.specie;
  }

  @override
  set specie(Specie value) {
    _$specieAtom.context.conditionallyRunInAction(() {
      super.specie = value;
      _$specieAtom.reportChanged();
    }, _$specieAtom, name: '${_$specieAtom.name}_set');
  }

  final _$pokeApiV2Atom = Atom(name: '_PokeApiV2StoreBase.pokeApiV2');

  @override
  PokeApiV2 get pokeApiV2 {
    _$pokeApiV2Atom.context.enforceReadPolicy(_$pokeApiV2Atom);
    _$pokeApiV2Atom.reportObserved();
    return super.pokeApiV2;
  }

  @override
  set pokeApiV2(PokeApiV2 value) {
    _$pokeApiV2Atom.context.conditionallyRunInAction(() {
      super.pokeApiV2 = value;
      _$pokeApiV2Atom.reportChanged();
    }, _$pokeApiV2Atom, name: '${_$pokeApiV2Atom.name}_set');
  }

  final _$getInfoPokemonAsyncAction = AsyncAction('getInfoPokemon');

  @override
  Future<void> getInfoPokemon(String nome) {
    return _$getInfoPokemonAsyncAction.run(() => super.getInfoPokemon(nome));
  }

  final _$getInfoSpecieAsyncAction = AsyncAction('getInfoSpecie');

  @override
  Future<void> getInfoSpecie(String numPokemon) {
    return _$getInfoSpecieAsyncAction
        .run(() => super.getInfoSpecie(numPokemon));
  }
}
