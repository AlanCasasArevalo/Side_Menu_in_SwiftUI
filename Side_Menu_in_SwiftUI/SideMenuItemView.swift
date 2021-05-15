import SwiftUI

struct SideMenuItemView: View {
    
    let itemViewModel: SideMenuViewModel
    
    var body: some View {
        HStack (spacing:16) {
            Image(systemName: itemViewModel.imageName)
                .frame(width: 24, height: 24)
            Text(itemViewModel.title)
                .font(.system(size: 15, weight: .semibold, design: .rounded))
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuItemView(itemViewModel: .profile)
    }
}
