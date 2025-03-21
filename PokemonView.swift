import SwiftUI

struct PokemonView: View {
    @State var pokemon: Pokemon
    
    var body: some View {
        VStack {
            Text(pokemon.name)
                .font(.largeTitle)
//            Text("\(pokemon.types)")
            Image(pokemon.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)

            
        }
    }
}

//struct PokemonView_Previews: PreviewProvider {
//    static var previews: some View {
//        PokemonView(pokemon: Pokemon(id: 1, name: "nome", types: [.dark]))
//    }
//}
