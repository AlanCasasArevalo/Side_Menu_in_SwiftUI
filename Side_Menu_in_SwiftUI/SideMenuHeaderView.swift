import SwiftUI

struct SideMenuHeaderView: View {
    
    @Binding var isShowingMenu: Bool

    var body: some View {
        ZStack (alignment: .topTrailing) {
            
            Button(action: {
                withAnimation(.spring()) {
                    isShowingMenu.toggle()
                }
            }, label: {
                Image(systemName: "xmark")
                    .frame(width: 32, height: 32)
                    .foregroundColor(.white)
                    .padding()
            })

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
            .foregroundColor(.white)
        }
    }
}

struct SideMenuHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderView(isShowingMenu: .constant(true))
    }
}
