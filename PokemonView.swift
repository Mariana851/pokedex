import SwiftUI

struct PokemonView: View {
    @State var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.name)
        }
    }
}

struct PokemonView_Previews: PreviewProvider {
    static var previews: some View {
        PokemonView(pokemon: Pokemon(id: 1, name: "nome", types: [.dark]))
    }
}
