# pokedex
Aplicativo para iOS sobre pokemons e seus estatísticas


TÓPICOS SLIDE:
- O APP
- CÓDIGOS UTILIZADOS
(Prints)

códigos promissores para as imagens:
struct ScrollPokedex: View {
  var body :some View {
    ScrollView{
      VStack (spacing:20) {
        ForEach(pokemons, id: \.self) { pokemon in
          Image(pokemon.name)
            .resizable()
            .frame(width: 100, height: 100)
          Text(pokemon.name)
            .font(.largeTitle)
        }

ou:

import SwiftUI

struct Pokemon: Identifiable {
    let id: Int
    let name: String
    let types: [PokemonType]

    var imageName: String {
        name.lowercased() // Supondo que a imagem tenha o mesmo nome do Pokémon em minúsculas
    }
}

enum PokemonType {
    case fire, water, grass, electric, psychic, dark, fairy, bug, rock
}

struct pokedex: View {
    @State private var showsheet = false
    @State var pokemonSelected: Pokemon = Pokemon(id: 1, name: "", types: [.dark])

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(pokemons) { pokemon in
                    ZStack {
                        Rectangle()
                            .foregroundColor(.gray)
                            .frame(height: 100)
                            .cornerRadius(20)
                            .padding(5)
                        Text(pokemon.name)
                    }
                    .onTapGesture {
                        pokemonSelected = pokemon
                        showsheet.toggle()
                    }
                }
            }
            .sheet(isPresented: $showsheet) {
                PokemonView(pokemon: pokemonSelected)
            }
        }
    }
}

struct PokemonView: View {
    var pokemon: Pokemon

    var body: some View {
        VStack {
            Image(pokemon.imageName) // Exibe a imagem correspondente ao Pokémon
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text(pokemon.name)
                .font(.largeTitle)
                .padding()
        }
    }
}

// Dados fictícios para teste
let pokemons = [
    Pokemon(id: 1, name: "Bulbasaur", types: [.grass, .poison]),
    Pokemon(id: 2, name: "Charmander", types: [.fire]),
    Pokemon(id: 3, name: "Squirtle", types: [.water]),
    Pokemon(id: 4, name: "Pikachu", types: [.electric])
]

struct pokedex_Previews: PreviewProvider {
    static var previews: some View {
        pokedex()
    }
}
