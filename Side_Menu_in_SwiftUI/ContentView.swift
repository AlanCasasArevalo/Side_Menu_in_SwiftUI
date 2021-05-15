import SwiftUI

struct ContentView: View {
    
    @State private var isShowingMenu = false
    
    var body: some View {
        NavigationView {
            ZStack {
                if isShowingMenu {
                    SideMenuView(isShowingMenu: $isShowingMenu)
                }
                HomeView()
                    .cornerRadius(isShowingMenu ? 20.0 : 10.0)
                    .offset(x: isShowingMenu ? 300 : 0, y: isShowingMenu ? 40 : 0)
                    .scaleEffect(isShowingMenu ? 0.80 : 1.0)
                    .navigationBarItems(leading: Button(action: {
                        withAnimation(.spring()) {
                            isShowingMenu.toggle()
                        }
                    }, label: {
                        Image(systemName: "list.bullet")
                            .foregroundColor(.black)
                    }))
                    .navigationTitle("Home")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HomeView: View {
    var body: some View {
        ZStack {
            Color.white
            Text("Hola mundo")
                .padding()
        }
        
    }
}
