import SwiftUI

struct CustomTextFieldComponent {
    // MARK: - ™PROPERTIES™
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    @Binding var text: String
    //™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━«
    let placeholder: Text
    let sfImgName: String
    ///™━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
}
// MARK: END OF: CustomSecureFieldComponent

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

extension CustomTextFieldComponent: View {
    
    // MARK: ™━━━━━━━━━━━━ [body] ━━━━━━━━━━━━™
    var body: some View {
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
        ZStack(alignment: .leading, content: {
            
            if text.isEmpty {
                //∆..........
                placeholder
                    .foregroundColor(Color(.init(white: 1, alpha: 0.8)))
                    .padding(.leading, 30)
                
            }
            /// ∆ END OF: if-statement
            
            HStack {
                
                Image(systemName: sfImgName)
                    .imageGridFormatter(aspectRatio: .fit, frameW: 20, frameH: 20)
                    .foregroundColor(.white)
                
                TextField("", text: $text)
                
            }
            /// ∆ END OF: HStack
            
        })
        // MARK: ||END__PARENT-ZSTACK||
        
        //━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
    }
    // MARK: |||END OF: body|||
}
// MARK: END OF: CustomSecureFieldComponent

/// ™━━━━━━━━━━━━━━━━━━━━━━━━━━ ([ Preview ]) ━━━━━━━━━━━━━━━━━━━━━━━━━━™

// MARK: - Preview ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
struct CustomTextFieldComponent_Previews: PreviewProvider {
    
    static var previews: some View {
        
        CustomTextFieldComponent(
            text: .constant(""),
            placeholder: Text("Email"),
            sfImgName: "envelope")
        //.padding(.all, 100)
        .preferredColorScheme(.dark)
        //.previewLayout(.sizeThatFits)
        //.previewLayout(.fixed(width: 360, height: 720))
        // The preview below is for like a card
        .previewLayout(.fixed(width: 440, height: 270))
    }
}

/// @━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

