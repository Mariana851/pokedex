import SwiftUI

struct PokemonStats {
    let hp: Int
    let attack: Int
    let defense: Int
    let speed: Int
}

struct estatisticaView: View {
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
                Text("HP: \(pokemon.stats.hp)")
                Text("Ataque: \(pokemon.stats.attack)")
                Text("Defesa: \(pokemon.stats.defense)")
                Text("Velocidade: \(pokemon.stats.speed)")
            }
            .font(.title2)
            .padding()

            Spacer()
        }
        .navigationTitle(pokemon.name)
    }
}

struct PokemonDetailView_Previews: PreviewProvider {
    static var previews: some View {
        estatisticaView()
    }
}
