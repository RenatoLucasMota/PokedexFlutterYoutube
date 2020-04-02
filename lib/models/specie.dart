class Specie {
  int baseHappiness;
  int captureRate;
  ObjPokemon color;
  EvolutionChain evolutionChain;
  ObjPokemon evolvesFromSpecies;
  List<FlavorTextEntries> flavorTextEntries;
  bool formsSwitchable;
  int genderRate;
  List<Genera> genera;
  ObjPokemon generation;
  ObjPokemon growthRate;
  ObjPokemon habitat;
  bool hasGenderDifferences;
  int hatchCounter;
  int id;
  bool isBaby;
  String name;
  List<Names> names;
  int order;
  List<PalParkEncounters> palParkEncounters;
  List<PokedexNumbers> pokedexNumbers;
  ObjPokemon shape;
  List<Varieties> varieties;

  Specie(
      {this.baseHappiness,
      this.captureRate,
      this.color,
      this.evolutionChain,
      this.evolvesFromSpecies,
      this.flavorTextEntries,
      this.formsSwitchable,
      this.genderRate,
      this.genera,
      this.generation,
      this.growthRate,
      this.habitat,
      this.hasGenderDifferences,
      this.hatchCounter,
      this.id,
      this.isBaby,
      this.name,
      this.names,
      this.order,
      this.palParkEncounters,
      this.pokedexNumbers,
      this.shape,
      this.varieties});

  Specie.fromJson(Map<String, dynamic> json) {
    baseHappiness = json['base_happiness'];
    captureRate = json['capture_rate'];
    color = json['color'] != null ? new ObjPokemon.fromJson(json['color']) : null;
    evolutionChain = json['evolution_chain'] != null
        ? new EvolutionChain.fromJson(json['evolution_chain'])
        : null;
    evolvesFromSpecies = json['evolves_from_species'] != null ? new ObjPokemon.fromJson(json['evolves_from_species']) : null;
    if (json['flavor_text_entries'] != null) {
      flavorTextEntries = new List<FlavorTextEntries>();
      json['flavor_text_entries'].forEach((v) {
        flavorTextEntries.add(new FlavorTextEntries.fromJson(v));
      });
    }
    formsSwitchable = json['forms_switchable'];
    genderRate = json['gender_rate'];
    if (json['genera'] != null) {
      genera = new List<Genera>();
      json['genera'].forEach((v) {
        genera.add(new Genera.fromJson(v));
      });
    }
    generation = json['generation'] != null
        ? new ObjPokemon.fromJson(json['generation'])
        : null;
    growthRate = json['growth_rate'] != null
        ? new ObjPokemon.fromJson(json['growth_rate'])
        : null;
    hasGenderDifferences = json['has_gender_differences'];
    hatchCounter = json['hatch_counter'];
    id = json['id'];
    isBaby = json['is_baby'];
    name = json['name'];
    if (json['names'] != null) {
      names = new List<Names>();
      json['names'].forEach((v) {
        names.add(new Names.fromJson(v));
      });
    }
    order = json['order'];
    if (json['pal_park_encounters'] != null) {
      palParkEncounters = new List<PalParkEncounters>();
      json['pal_park_encounters'].forEach((v) {
        palParkEncounters.add(new PalParkEncounters.fromJson(v));
      });
    }
    if (json['pokedex_numbers'] != null) {
      pokedexNumbers = new List<PokedexNumbers>();
      json['pokedex_numbers'].forEach((v) {
        pokedexNumbers.add(new PokedexNumbers.fromJson(v));
      });
    }
    shape = json['shape'] != null ? new ObjPokemon.fromJson(json['shape']) : null;
    if (json['varieties'] != null) {
      varieties = new List<Varieties>();
      json['varieties'].forEach((v) {
        varieties.add(new Varieties.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['base_happiness'] = this.baseHappiness;
    data['capture_rate'] = this.captureRate;
    if (this.color != null) {
      data['color'] = this.color.toJson();
    }
    if (this.evolutionChain != null) {
      data['evolution_chain'] = this.evolutionChain.toJson();
    }
    data['evolves_from_species'] = this.evolvesFromSpecies;
    if (this.flavorTextEntries != null) {
      data['flavor_text_entries'] =
          this.flavorTextEntries.map((v) => v.toJson()).toList();
    }
    data['forms_switchable'] = this.formsSwitchable;
    data['gender_rate'] = this.genderRate;
    if (this.genera != null) {
      data['genera'] = this.genera.map((v) => v.toJson()).toList();
    }
    if (this.generation != null) {
      data['generation'] = this.generation.toJson();
    }
    if (this.growthRate != null) {
      data['growth_rate'] = this.growthRate.toJson();
    }
    if (this.habitat != null) {
      data['habitat'] = this.habitat.toJson();
    }
    data['has_gender_differences'] = this.hasGenderDifferences;
    data['hatch_counter'] = this.hatchCounter;
    data['id'] = this.id;
    data['is_baby'] = this.isBaby;
    data['name'] = this.name;
    if (this.names != null) {
      data['names'] = this.names.map((v) => v.toJson()).toList();
    }
    data['order'] = this.order;
    if (this.palParkEncounters != null) {
      data['pal_park_encounters'] =
          this.palParkEncounters.map((v) => v.toJson()).toList();
    }
    if (this.pokedexNumbers != null) {
      data['pokedex_numbers'] =
          this.pokedexNumbers.map((v) => v.toJson()).toList();
    }
    if (this.shape != null) {
      data['shape'] = this.shape.toJson();
    }
    if (this.varieties != null) {
      data['varieties'] = this.varieties.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class ObjPokemon {
  String name;
  String url;

  ObjPokemon({this.name, this.url});

  ObjPokemon.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class EvolutionChain {
  String url;

  EvolutionChain({this.url});

  EvolutionChain.fromJson(Map<String, dynamic> json) {
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    return data;
  }
}

class FlavorTextEntries {
  String flavorText;
  ObjPokemon language;
  ObjPokemon version;

  FlavorTextEntries({this.flavorText, this.language, this.version});

  FlavorTextEntries.fromJson(Map<String, dynamic> json) {
    flavorText = json['flavor_text'];
    language =
        json['language'] != null ? new ObjPokemon.fromJson(json['language']) : null;
    version =
        json['version'] != null ? new ObjPokemon.fromJson(json['version']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['flavor_text'] = this.flavorText;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    if (this.version != null) {
      data['version'] = this.version.toJson();
    }
    return data;
  }
}

class Genera {
  String genus;
  ObjPokemon language;

  Genera({this.genus, this.language});

  Genera.fromJson(Map<String, dynamic> json) {
    genus = json['genus'];
    language =
        json['language'] != null ? new ObjPokemon.fromJson(json['language']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['genus'] = this.genus;
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    return data;
  }
}

class Names {
  ObjPokemon language;
  String name;

  Names({this.language, this.name});

  Names.fromJson(Map<String, dynamic> json) {
    language =
        json['language'] != null ? new ObjPokemon.fromJson(json['language']) : null;
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.language != null) {
      data['language'] = this.language.toJson();
    }
    data['name'] = this.name;
    return data;
  }
}

class PalParkEncounters {
  ObjPokemon area;
  int baseScore;
  int rate;

  PalParkEncounters({this.area, this.baseScore, this.rate});

  PalParkEncounters.fromJson(Map<String, dynamic> json) {
    area = json['area'] != null ? new ObjPokemon.fromJson(json['area']) : null;
    baseScore = json['base_score'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.area != null) {
      data['area'] = this.area.toJson();
    }
    data['base_score'] = this.baseScore;
    data['rate'] = this.rate;
    return data;
  }
}

class PokedexNumbers {
  int entryNumber;
  ObjPokemon pokedex;

  PokedexNumbers({this.entryNumber, this.pokedex});

  PokedexNumbers.fromJson(Map<String, dynamic> json) {
    entryNumber = json['entry_number'];
    pokedex =
        json['pokedex'] != null ? new ObjPokemon.fromJson(json['pokedex']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['entry_number'] = this.entryNumber;
    if (this.pokedex != null) {
      data['pokedex'] = this.pokedex.toJson();
    }
    return data;
  }
}

class Varieties {
  bool isDefault;
  ObjPokemon pokemon;

  Varieties({this.isDefault, this.pokemon});

  Varieties.fromJson(Map<String, dynamic> json) {
    isDefault = json['is_default'];
    pokemon =
        json['pokemon'] != null ? new ObjPokemon.fromJson(json['pokemon']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['is_default'] = this.isDefault;
    if (this.pokemon != null) {
      data['pokemon'] = this.pokemon.toJson();
    }
    return data;
  }
}