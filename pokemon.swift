//
//  Pokemon.swift
//  pokedex
//
//  Created by Aluno Mack on 19/03/25.
//

import SwiftUI

struct Pokemon: Identifiable {
    var id: Int
    var name: String
    var types: [ElementType]
    var imageName: String {
            "\(id)"
        }
    let stats: PokemonStats
}

enum ElementType: String, CaseIterable {
    case grass
    case poison
    case fire
    case flying
    case water
    case bug
    case normal
    case electric
    case ground
    case fairy
    case psychic
    case rock
    case ice
    case dragon
    case dark
    case steel
    case fighting
    case ghost
}

let pokemons: [Pokemon] = [
    Pokemon(id: 1, name: "bulbasaur", types: [.grass, .poison], stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 2, name: "ivysaur", types: [.grass, .poison], stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 3, name: "venusaur", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 4, name: "charmander", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 5, name: "charmeleon", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 6, name: "charizard", types: [.fire, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 7, name: "squirtle", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 8, name: "wartortle", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 9, name: "blastoise", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 10, name: "caterpie", types: [.bug],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 11, name: "metapod", types: [.bug],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 12, name: "butterfree", types: [.bug, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 13, name: "weedle", types: [.bug, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 14, name: "kakuna", types: [.bug, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 15, name: "beedrill", types: [.bug, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 16, name: "pidgey", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 17, name: "pidgeotto", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 18, name: "pidgeot", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 19, name: "rattata", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 20, name: "raticate", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 21, name: "spearow", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 22, name: "fearow", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 23, name: "ekans", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 24, name: "arbok", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 25, name: "pikachu", types: [.electric],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 26, name: "raichu", types: [.electric],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 27, name: "sandshrew", types: [.ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 28, name: "sandslash", types: [.ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 29, name: "nidoran-f", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 30, name: "nidorina", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 31, name: "nidoqueen", types: [.poison, .ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 32, name: "nidoran-m", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 33, name: "nidorino", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 34, name: "nidoking", types: [.poison, .ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 35, name: "clefairy", types: [.fairy],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 36, name: "clefable", types: [.fairy],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 37, name: "vulpix", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 38, name: "ninetales", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 39, name: "jigglypuff", types: [.normal, .fairy],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 40, name: "wigglytuff", types: [.normal, .fairy],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 41, name: "zubat", types: [.poison, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 42, name: "golbat", types: [.poison, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 43, name: "oddish", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 44, name: "gloom", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 45, name: "vileplume", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 46, name: "paras", types: [.bug, .grass],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 47, name: "parasect", types: [.bug, .grass],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 48, name: "venonat", types: [.bug, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 49, name: "venomoth", types: [.bug, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 50, name: "diglett", types: [.ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 51, name: "dugtrio", types: [.ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 52, name: "meowth", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 53, name: "persian", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 54, name: "psyduck", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 55, name: "golduck", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 56, name: "mankey", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 57, name: "primeape", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 58, name: "growlithe", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 59, name: "arcanine", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 60, name: "poliwag", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 61, name: "poliwhirl", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 62, name: "poliwrath", types: [.water, .fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 63, name: "abra", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 64, name: "kadabra", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 65, name: "alakazam", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 66, name: "machop", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 67, name: "machoke", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 68, name: "machamp", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 69, name: "bellsprout", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 70, name: "weepinbell", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 71, name: "victreebel", types: [.grass, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 72, name: "tentacool", types: [.water, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 73, name: "tentacruel", types: [.water, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 74, name: "geodude", types: [.rock, .ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 75, name: "graveler", types: [.rock, .ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 76, name: "golem", types: [.rock, .ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 77, name: "ponyta", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 78, name: "rapidash", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 79, name: "slowpoke", types: [.water, .psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 80, name: "slowbro", types: [.water, .psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 81, name: "magnemite", types: [.electric, .steel],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 82, name: "magneton", types: [.electric, .steel],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 83, name: "farfetchd", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 84, name: "doduo", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 85, name: "dodrio", types: [.normal, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 86, name: "seel", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 87, name: "dewgong", types: [.water, .ice],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 88, name: "grimer", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 89, name: "muk", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 90, name: "shellder", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 91, name: "cloyster", types: [.water, .ice],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 92, name: "gastly", types: [.ghost, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 93, name: "haunter", types: [.ghost, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 94, name: "gengar", types: [.ghost, .poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 95, name: "onix", types: [.rock, .ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 96, name: "drowzee", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 97, name: "hypno", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 98, name: "krabby", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 99, name: "kingler", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 100, name: "voltorb", types: [.electric],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 101, name: "electrode", types: [.electric],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 102, name: "exeggcute", types: [.grass, .psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 103, name: "exeggutor", types: [.grass, .psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 104, name: "cubone", types: [.ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 105, name: "marowak", types: [.ground],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 106, name: "hitmonlee", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 107, name: "hitmonchan", types: [.fighting],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 108, name: "lickitung", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 109, name: "koffing", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 110, name: "weezing", types: [.poison],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 111, name: "rhyhorn", types: [.ground, .rock],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 112, name: "rhydon", types: [.ground, .rock],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 113, name: "chansey", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 114, name: "tangela", types: [.grass],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 115, name: "kangaskhan", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 116, name: "horsea", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 117, name: "seadra", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 118, name: "goldeen", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 119, name: "seaking", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 120, name: "staryu", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 121, name: "starmie", types: [.water, .psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 122, name: "mr-mime", types: [.psychic, .fairy],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 123, name: "scyther", types: [.bug, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 124, name: "jynx", types: [.ice, .psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 125, name: "electabuzz", types: [.electric],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 126, name: "magmar", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 127, name: "pinsir", types: [.bug],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 128, name: "tauros", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 129, name: "magikarp", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 130, name: "gyarados", types: [.water, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 131, name: "lapras", types: [.water, .ice],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 132, name: "ditto", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 133, name: "eevee", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 134, name: "vaporeon", types: [.water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 135, name: "jolteon", types: [.electric],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 136, name: "flareon", types: [.fire],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 137, name: "porygon", types: [.normal],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 138, name: "omanyte", types: [.rock, .water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 139, name: "omastar", types: [.rock, .water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 140, name: "kabuto", types: [.rock, .water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 141, name: "kabutops", types: [.rock, .water],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 142, name: "aerodactyl", types: [.rock, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 143, name: "snorlax", types: [.normal], stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 144, name: "articuno", types: [.ice, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 145, name: "zapdos", types: [.electric, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 146, name: "moltres", types: [.fire, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 147, name: "dratini", types: [.dragon],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 148, name: "dragonair", types: [.dragon],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 149, name: "dragonite", types: [.dragon, .flying],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 150, name: "mewtwo", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 151, name: "mew", types: [.psychic],stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45))
]
