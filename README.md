# pokedex
Aplicativo para iOS sobre pokemons e suas estatísticas


TÓPICOS SLIDE:
- O APP
- CÓDIGOS UTILIZADOS
(Prints)

# códigos promissores para as imagens:
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

# ou:

import SwiftUI

struct Pokemon: Identifiable {
    let id: Int
    let name: String
    let types: [PokemonType]

    var imageName: String {
        "\(id)" // Usa o ID como nome da imagem (exemplo: "1.png", "25.png")
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
            Image(pokemon.imageName) // Agora carrega a imagem pelo ID
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
    Pokemon(id: 4, name: "Charmander", types: [.fire]),
    Pokemon(id: 7, name: "Squirtle", types: [.water]),
    Pokemon(id: 25, name: "Pikachu", types: [.electric])
]

struct pokedex_Previews: PreviewProvider {
    static var previews: some View {
        pokedex()
    }
}

# codigo para estatistica
struct Pokemon: Identifiable {
    let id: Int
    let name: String
    let types: [PokemonType]
    let stats: PokemonStats  // Adicionamos estatísticas

    var imageName: String {
        "\(id)" // Usa o ID como nome da imagem
    }
}

struct PokemonStats {
    let hp: Int
    let attack: Int
    let defense: Int
    let speed: Int
}

struct PokemonStatsView: View {
    var body: some View {
        NavigationView {
            List(pokemons) { pokemon in
                NavigationLink(destination: PokemonDetailView(pokemon: pokemon)) {
                    HStack {
                        Image(pokemon.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 50, height: 50)
                        VStack(alignment: .leading) {
                            Text(pokemon.name)
                                .font(.headline)
                            Text("HP: \(pokemon.stats.hp), ATK: \(pokemon.stats.attack), DEF: \(pokemon.stats.defense)")
                                .font(.subheadline)
                        }
                    }
                }
            }
            .navigationTitle("Estatísticas")
        }
    }
}

struct PokemonDetailView: View {
    var pokemon: Pokemon

    var body: some View {
        VStack {
            Image(pokemon.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            Text(pokemon.name)
                .font(.largeTitle)
                .padding()

            VStack(alignment: .leading, spacing: 10) {
                Text("💖 HP: \(pokemon.stats.hp)")
                Text("⚔️ Ataque: \(pokemon.stats.attack)")
                Text("🛡 Defesa: \(pokemon.stats.defense)")
                Text("⚡ Velocidade: \(pokemon.stats.speed)")
            }
            .font(.title2)
            .padding()

            Spacer()
        }
        .navigationTitle(pokemon.name)
    }
}

# estatistica com gráfico:
import SwiftUI
import Charts  // Biblioteca para gráficos

// Definição dos dados do Pokémon
struct Pokemon: Identifiable {
    let id: Int
    let name: String
    let types: [PokemonType]
    let stats: PokemonStats

    var imageName: String {
        "\(id)" // Usa o ID como nome da imagem
    }
}

// Estrutura para os status do Pokémon
struct PokemonStats {
    let hp: Int
    let attack: Int
    let defense: Int
    let speed: Int
}

// Tipos de Pokémon (apenas exemplo)
enum PokemonType {
    case fire, water, grass, electric, psychic, dark, fairy, bug, rock
}

// Tela da aba de estatísticas
struct PokemonStatsView: View {
    @State private var selectedPokemon: Pokemon?  // Pokémon selecionado para o gráfico

    var body: some View {
        NavigationView {
            VStack {
                List(pokemons) { pokemon in
                    Button(action: {
                        selectedPokemon = pokemon  // Atualiza o Pokémon selecionado
                    }) {
                        HStack {
                            Image(pokemon.imageName)
                                .resizable()
                                .scaledToFit()
                                .frame(width: 50, height: 50)
                            VStack(alignment: .leading) {
                                Text(pokemon.name)
                                    .font(.headline)
                            }
                        }
                    }
                }
                .navigationTitle("Estatísticas")

                if let pokemon = selectedPokemon {
                    PokemonChartView(pokemon: pokemon)  // Exibe o gráfico do Pokémon selecionado
                        .padding()
                } else {
                    Text("Selecione um Pokémon para ver as estatísticas")
                        .foregroundColor(.gray)
                        .padding()
                }
            }
        }
    }
}

// Tela do gráfico do Pokémon selecionado
struct PokemonChartView: View {
    var pokemon: Pokemon

    var body: some View {
        VStack {
            Text("Estatísticas de \(pokemon.name)")
                .font(.title2)
                .padding()

            Chart {
                BarMark(x: .value("Stat", "HP"), y: .value("Valor", pokemon.stats.hp))
                    .foregroundStyle(.red)

                BarMark(x: .value("Stat", "Ataque"), y: .value("Valor", pokemon.stats.attack))
                    .foregroundStyle(.orange)

                BarMark(x: .value("Stat", "Defesa"), y: .value("Valor", pokemon.stats.defense))
                    .foregroundStyle(.blue)

                BarMark(x: .value("Stat", "Velocidade"), y: .value("Valor", pokemon.stats.speed))
                    .foregroundStyle(.green)
            }
            .frame(height: 300)  // Altura do gráfico

            Spacer()
        }
    }
}

// Dados de exemplo dos Pokémon
let pokemons = [
    Pokemon(id: 1, name: "Bulbasaur", types: [.grass, .poison], stats: PokemonStats(hp: 45, attack: 49, defense: 49, speed: 45)),
    Pokemon(id: 4, name: "Charmander", types: [.fire], stats: PokemonStats(hp: 39, attack: 52, defense: 43, speed: 65)),
    Pokemon(id: 7, name: "Squirtle", types: [.water], stats: PokemonStats(hp: 44, attack: 48, defense: 65, speed: 43)),
    Pokemon(id: 25, name: "Pikachu", types: [.electric], stats: PokemonStats(hp: 35, attack: 55, defense: 40, speed: 90))
]

// Abas do app (TabView)
struct ContentView: View {
    var body: some View {
        TabView {
            pokedex()
                .tabItem {
                    Image(systemName: "list.bullet")
                    Text("Pokédex")
                }

            PokemonStatsView()
                .tabItem {
                    Image(systemName: "chart.bar.fill")
                    Text("Estatísticas")
                }
        }
    }
}
