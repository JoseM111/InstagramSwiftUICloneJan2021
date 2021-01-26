import SwiftUI

struct ProfileHeaderView {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
}
// MARK: END OF: ProfileHeaderView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension ProfileHeaderView: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        VStack(alignment: .leading, spacing: nil, content: {
            
            // MARK: -∆  Header  ━━━━━━━━━━━━━━━━━━━
            HStack {
                
                // MARK: -∆  Image  ━━━━━━━━━━━━━━━━━━━
                Image("captain-marvel")
                    .circleImageFrame(
                        aspectR: .fill,
                    frameW: 80, frameH: 80)
                
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                Spacer(minLength: 0) // Spaced Horizontally
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                
                // MARK: -∆  User stats  ━━━━━━━━━━━━━━━━━━━
                ForEach(0..<3) { _ in
                    //∆..........
                    UserStatView()
                }
                
            }
            /// ∆ END OF: HStack
            .padding(.horizontal)
            
            // MARK: -∆  User name  ━━━━━━━━━━━━━━━━━━━
            Text("Captain Marvel")
                .font(.system(size: 15, weight: .semibold))
                .padding([.leading, .top])
            
            // MARK: -∆  Caption  ━━━━━━━━━━━━━━━━━━━
            Text("The Most Powerful Super Heroe • Alive")
                .font(.system(size: 15))
                .padding(.leading)
                .padding(.top, 1)
            
            // MARK: -∆  Button(edit-profile)  ━━━━━━━━━━━━━━━━━━━
            HStack {
                
                Button(action: {  }) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Edit Profile")
                }
                .font(.system(size: 14, weight: .semibold))
                .frame(width: 360, height: 32)
                .background(Color.white)
                .foregroundColor(.black)
                .overlay(
                    //∆..........
                    RoundedRectangle(cornerRadius: 3)
                        .stroke(Color.gray, lineWidth: 1.0)
                )
            }
            /// ∆ END OF: HStack
            .padding([.horizontal, .top])
        })
        // MARK: ||END__PARENT-VSTACK||
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: ProfileHeaderView

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct ProfileHeaderView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ProfileHeaderView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

// import SwiftUI

struct UserStatView: View {
    /// MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    // MARK: -∆  body •••••••••
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
            
            Text("2")
                .font(.system(size: 15, weight: .semibold))
            
            Text("Followers")
                .font(.system(size: 15))
        })
        // MARK: ||END__PARENT-VSTACK||
        .frame(width: 80, alignment: .center)
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: UserStatView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

