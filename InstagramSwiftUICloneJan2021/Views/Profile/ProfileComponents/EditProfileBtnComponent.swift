import SwiftUI

struct EditProfileBtnComponent: View {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    var actionCompletion: (() -> Void)
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    var body: some View {
        
        HStack {
            
            GeometryReader { geo in
                Button(action: actionCompletion) {
                    //∆━━━━━━ LABEL ━━━━━━
                    Text("Edit Profile")
                        .font(.system(size: 14, weight: .semibold))
                        .frame(minWidth: (geo.size.width) - 35, minHeight: 32)///<--geo
                        .background(Color.white)
                        .foregroundColor(.black)
                        .overlay(RoundedRectangle(cornerRadius: 3)
                                    .stroke(Color(.lightGray), lineWidth: 1.0))
                        .frame(width: FULL_UI_SCREEN_WIDTH)
                }
                /// ∆ END OF: Button
//                .padding(.top)
            }
        }
        // MARK: ||END__PARENT-HSTACK||
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: EditProfileBtnComponent

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview
struct EditProfileBtnComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        EditProfileBtnComponent(actionCompletion: { })//.padding(.all, 100)
        //.preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        //.previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
