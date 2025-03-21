import SwiftUI

struct pokedex: View {
    @State private var showsheet = false
    @State var pokemonSelected: Pokemon = Pokemon(id: 1, name: "", types: [.dark], stats: PokemonStats(hp: 1, attack: 1, defense: 1, speed: 1))
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
            .onTapGesture {
            }
            .sheet(isPresented: $showsheet, content: {
                PokemonView(pokemon: pokemonSelected)
                
            })
        }
        
        
    }
    //}
    //}
    
    struct pokedex_Previews: PreviewProvider {
        static var previews: some View {
            pokedex()
        }
    }
}
