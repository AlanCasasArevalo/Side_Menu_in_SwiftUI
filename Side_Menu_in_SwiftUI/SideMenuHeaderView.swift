import SwiftUI

struct SideMenuHeaderView: View {
    var body: some View {
        VStack (alignment: .leading) {
            Image(systemName: "list.bullet")
                .resizable()
                .scaledToFill()
                .clipped()
                .frame(width: 64, height: 64)
                .clipShape(Circle())
                .padding(.bottom, 16)
                
            Text("Eddie Gordo")
                .font(.system(size: 24, weight: .semibold, design: .rounded))

            Text("@egordo")
                .font(.system(size: 14, weight: .light, design: .rounded))
                .padding(.bottom, 24)

            HStack (spacing: 12) {
                HStack (spacing: 4) {
                    Text("24").bold()
                    Text("Following")
                }
                HStack (spacing: 4) {
                    Text("42").bold()
                    Text("Followers")
                }
                
                Spacer()
            }
            
            Spacer()
        }
        .padding()
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView()
    }
}
