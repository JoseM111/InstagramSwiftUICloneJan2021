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
                    .circleImageFrame(aspectR: .fill, frameW: 80, frameH: 80)
                
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                Spacer(minLength: 0) // Spaced Horizontally
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                
                // MARK: -∆  User stats  ━━━━━━━━━━━━━━━━━━━
                HStack(spacing: 25) {
                    
                    UserStatView(value: 1, title: "Post")
                    UserStatView(value: 2, title: "Followers")
                    UserStatView(value: 4, title: "Following")
                }
//                .padding(.trailing, 20)
                
            }
            /// ∆ END OF: HStack
            .padding(.horizontal)
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  USER NAME * CAPTION  ━━━━━━━━━━━━━━━━━━━
            VStack(alignment: .leading) {
                
                Text("Captain Marvel")
                    .font(.system(size: 15, weight: .semibold))
                    .padding(.top, 5)
                
                // MARK: -∆  Caption  ━━━━━━━━━━━━━━━━━━━
                Text("The Most Powerful Super Heroe • Alive")
                    .font(.system(size: 15))
                    .padding(.top, 1)
            }
            /// ∆ END OF: HStack
            .padding(.leading, 20)
            //∆ HANGER ™👕™ ━━━━━━━━━━━━━━━━━
            
            // MARK: -∆  Button(edit-profile || Follow * Message)  ━━━━━━━━━━━━━━━━━━━
            HStack {
                
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                Spacer(minLength: 0) // Spaced Horizontally
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                
                ProfileActionBtnView()
                
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
                Spacer(minLength: 0) // Spaced Horizontally
                //ººº━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
            }
            /// ∆ END OF: HStack
            .padding(.top, 5)
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
