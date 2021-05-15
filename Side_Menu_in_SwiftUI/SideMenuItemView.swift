import SwiftUI

struct SideMenuItemView: View {
    var body: some View {
        HStack (spacing:16) {
            Image(systemName: "person")
                .frame(width: 24, height: 24)
            Text("Profile")
                .font(.system(size: 15, weight: .semibold, design: .rounded))
            Spacer()
        }
        .foregroundColor(.white)
        .padding()
    }
}

struct SideMenuItemView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuItemView()
    }
}
