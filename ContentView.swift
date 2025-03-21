import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            pokedex()
                .tabItem{
                    Label("Pokedex", systemImage: "cricket.ball.fill")
                }
            estatisticaView()
                .tabItem{
                    Label("Estatísticas", systemImage: "chart.xyaxis.line")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
