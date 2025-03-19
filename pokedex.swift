import SwiftUI

struct pokedex: View {
    @State var items = [1, 2, 3, 4, 5]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]) {
                ForEach(items, id: \.self) { item in
                    Rectangle()
                        .foregroundColor(.gray)
                        .frame(height: 100)
                        .cornerRadius(10)
                }
            }
        }
        .onTapGesture {
            withAnimation {
                items.shuffle()
            }
        }
    }
}

struct pokedex_Previews: PreviewProvider {
    static var previews: some View {
        pokedex()
    }
}
