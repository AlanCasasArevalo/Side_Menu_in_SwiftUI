import SwiftUI

struct SideMenuView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
            .edgesIgnoringSafeArea(.all)
        
        VStack {
            // Header
            
            // cells
        }
        
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
