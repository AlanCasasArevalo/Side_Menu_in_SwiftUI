import SwiftUI

struct SideMenuView: View {
    
    @Binding var isShowingMenu: Bool

    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: [Color.blue, Color.purple]), startPoint: .top, endPoint: .bottom)
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                // Header
                SideMenuHeaderView(isShowingMenu: $isShowingMenu)
                    .frame(height: 240)
                
                // cells
                ForEach(SideMenuViewModel.allCases, id: \.self) { itemViewModel in
                    
                    NavigationLink(
                        destination: Text(itemViewModel.title),
                        label: {
                            SideMenuItemView(itemViewModel: itemViewModel)
                        })
                }
                Spacer()
            }
        }
        .navigationBarHidden(true)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(isShowingMenu: .constant(true))
    }
}
