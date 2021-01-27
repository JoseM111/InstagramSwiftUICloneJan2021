import SwiftUI

struct ProfileActionBtnView {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    var isCurrentUser: Bool = false
    var isFollowed: Bool = false
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    
}
// MARK: END OF: ProfileActionBtnView

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension ProfileActionBtnView: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        if isCurrentUser {
            EditProfileBtnComponent(actionCompletion: {})
                .padding(.leading, 5)
            //∆..........
        } else {
            //∆..........
            HStack(content: {
                
                Button(action: {}) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text(isFollowed ? "Following" : "Follow")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)
                        .foregroundColor(isFollowed ? .black : .white)
                        .background(isFollowed ? Color.white : Color.twitterBlue2)
                        .overlay(RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.gray, lineWidth: isFollowed ? 1 : 0))
                }
                /// ∆ END OF: Button
                .cornerRadius(3.0)
                
                Button(action: {}) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Message")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(width: 172, height: 32)///<--geo
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color.gray, lineWidth: 1))
                }
                /// ∆ END OF: Button
                .cornerRadius(3.0)
            })
            /// ∆ END OF: HStack
        }
        // MARK: ||END__PARENT-VSTACK||
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: ProfileActionBtnView

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct ProfileActionBtnView_Previews: PreviewProvider {
    
    static var previews: some View {
        
        ProfileActionBtnView()//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

